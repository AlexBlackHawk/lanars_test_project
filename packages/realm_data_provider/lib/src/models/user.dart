import 'package:realm/realm.dart';

part 'user.realm.dart';

@RealmModel()
class _User {
  String? username;
  String? email;
  String? avatar;
}
