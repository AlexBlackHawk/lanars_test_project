import 'package:pexels_data_provider/pexels_data_provider.dart' hide Photo;
import 'package:photos_repository/photos_repository.dart';
import 'package:realm_data_provider/realm_data_provider.dart' hide Photo;

class PhotosRepository {
  PhotosRepository({RealmDataProvider? realmDataProvider, PexelsDataProvider? pexelsDataProvider})
      : _realmDataProvider = realmDataProvider ?? RealmDataProvider(),
        _pexelsDataProvider = pexelsDataProvider ?? PexelsDataProvider();

  final RealmDataProvider _realmDataProvider;
  final PexelsDataProvider _pexelsDataProvider;

  Future<void> loadPhotos(bool rewrite) async {
    final loadedPhotos = await _pexelsDataProvider.getPhotos();
    List<Photo> photos = loadedPhotos.map((photo) {
      return Photo(
        url: photo.original,
        photographer: photo.photographer,
        alt: photo.alt,
      );
    }).toList();
    _realmDataProvider.addPhotos(photos, rewrite);
  }

  List<Photo> getPhotos() {
    var photos = _realmDataProvider.getPhotos();
    return photos.map((photo) {
      return Photo(
        url: photo.url!,
        photographer: photo.photographer!,
        alt: photo.alt!,
      );
    }).toList();
  }
}


