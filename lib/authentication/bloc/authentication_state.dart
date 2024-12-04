part of 'authentication_bloc.dart';

final class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.authStatus = AuthStatus.unknown,
    this.user = User.empty,
  });

  final AuthStatus authStatus;
  final User user;

  const AuthenticationState.authenticated(User user)
      : this._(authStatus: AuthStatus.authenticated, user: user);

  const AuthenticationState.unauthenticated()
      : this._(authStatus: AuthenticationStatus.unauthenticated);

  const AuthenticationState.unknown() : this._();

  @override
  List<Object> get props => [
    authStatus,
    user,
  ];
}
