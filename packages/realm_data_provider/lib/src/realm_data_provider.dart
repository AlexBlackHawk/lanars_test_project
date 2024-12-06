import 'package:realm/realm.dart';
import 'models/models.dart';
import 'package:authentication_repository/authentication_repository.dart' as authentication;
import 'package:photos_repository/photos_repository.dart' as photos;

import 'package:realm_data_provider/realm_data_provider.dart';

class RealmDataProvider {
  RealmDataProvider({Realm? realm})
      : _realm = realm ?? Realm(Configuration.local([Photo.schema, User.schema]));

  final Realm _realm;

  void addUser(authentication.User authUser) {
    _realm.deleteAll<User>();
    User user = User(
      username: authUser.name,
      email: authUser.email,
      avatar: authUser.image,
    );
    _realm.write(() {
      _realm.add<User>(user);
    });
  }

  User getUser() {
    var users = _realm.all<User>();
    User user = users[0];
    return user;
  }

  void addPhotos(List<photos.Photo> photos, bool rewrite) {
    if (rewrite) _realm.deleteAll<Photo>();
    List<Photo> dbPhotos = photos.map((photo) {
      return Photo(
        url: photo.url,
        photographer: photo.photographer,
        alt: photo.alt,
      );
    }).toList();
    _realm.write(() {
      _realm.addAll<Photo>(dbPhotos);
    });
  }

  List<Photo> getPhotos() {
    var photos = _realm.all<Photo>();
    return photos.toList();
  }

  void close() {
    _realm.close();
  }
}


