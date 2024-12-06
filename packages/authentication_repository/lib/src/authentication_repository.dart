import 'dart:async';

import 'package:random_user_data_provider/random_user_data_provider.dart' hide User;
import 'package:realm_data_provider/realm_data_provider.dart' hide User;

import "package:authentication_repository/authentication_repository.dart";

enum AuthStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  AuthenticationRepository({RealmDataProvider? realmDataProvider, RandomUserDataProvider? randomUserDataProvider})
      : _realmDataProvider = realmDataProvider ?? RealmDataProvider(),
        _randomUserDataProvider = randomUserDataProvider ?? RandomUserDataProvider();

  final RealmDataProvider _realmDataProvider;
  final RandomUserDataProvider _randomUserDataProvider;

  final _authStatusController = StreamController<AuthStatus>();

  Stream<AuthStatus> get status async* {
    yield AuthStatus.unauthenticated;
    yield* _authStatusController.stream;
  }

  Future<void> logIn(String email, String password) async {
    final logInUser = await _randomUserDataProvider.getUser(email, password);
    if (logInUser == null) return;
    _authStatusController.add(AuthStatus.authenticated);
    User user = User(
      name: "${logInUser.first} ${logInUser.last}",
      email: logInUser.email,
      image: logInUser.medium,
    );
    _realmDataProvider.addUser(
      user,
    );
  }

  User getUser() {
    var user = _realmDataProvider.getUser();
    return User(
      name: user.email ?? "",
      email: user.email ?? "",
      image: user.avatar ?? "",
    );
  }

  void dispose() {
    _authStatusController.close();
  }
}