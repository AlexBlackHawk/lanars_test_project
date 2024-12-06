import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:realm_data_provider/realm_data_provider.dart';

import 'app.dart';

void main() {

  RealmDataProvider realmDataProvider = RealmDataProvider(
    realm: Realm(Configuration.local([Photo.schema, User.schema])),
  );
  runApp(App(realmDataProvider: realmDataProvider,));
}
