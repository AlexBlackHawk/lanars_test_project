// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Photo extends _Photo with RealmEntity, RealmObjectBase, RealmObject {
  Photo({
    String? url,
    String? photographer,
    String? alt,
  }) {
    RealmObjectBase.set(this, 'url', url);
    RealmObjectBase.set(this, 'photographer', photographer);
    RealmObjectBase.set(this, 'alt', alt);
  }

  Photo._();

  @override
  String? get url => RealmObjectBase.get<String>(this, 'url') as String?;
  @override
  set url(String? value) => RealmObjectBase.set(this, 'url', value);

  @override
  String? get photographer =>
      RealmObjectBase.get<String>(this, 'photographer') as String?;
  @override
  set photographer(String? value) =>
      RealmObjectBase.set(this, 'photographer', value);

  @override
  String? get alt => RealmObjectBase.get<String>(this, 'alt') as String?;
  @override
  set alt(String? value) => RealmObjectBase.set(this, 'alt', value);

  @override
  Stream<RealmObjectChanges<Photo>> get changes =>
      RealmObjectBase.getChanges<Photo>(this);

  @override
  Stream<RealmObjectChanges<Photo>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Photo>(this, keyPaths);

  @override
  Photo freeze() => RealmObjectBase.freezeObject<Photo>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'url': url.toEJson(),
      'photographer': photographer.toEJson(),
      'alt': alt.toEJson(),
    };
  }

  static EJsonValue _toEJson(Photo value) => value.toEJson();
  static Photo _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return Photo(
      url: fromEJson(ejson['url']),
      photographer: fromEJson(ejson['photographer']),
      alt: fromEJson(ejson['alt']),
    );
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Photo._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Photo, 'Photo', [
      SchemaProperty('url', RealmPropertyType.string, optional: true),
      SchemaProperty('photographer', RealmPropertyType.string, optional: true),
      SchemaProperty('alt', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
