import 'package:realm/realm.dart';

part 'photo.realm.dart';

@RealmModel()
class _Photo {
  String? url;
  String? photographer;
  String? alt;
}
