import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:photos_repository/photos_repository.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc({
    required PhotosRepository photosRepository,
  }) : _photosRepository = photosRepository,
       super(const MainState()) {
    on<MainPhotosLoaded>(_onPhotosLoaded);
    on<MainPhotosRefreshed>(_onPhotosRefreshed);
  }

  final PhotosRepository _photosRepository;

  Future<void> _onPhotosRefreshed(MainPhotosRefreshed event,Emitter<MainState> emit) async {
    await _photosRepository.loadPhotos(true);
    List<Photo> photos = _photosRepository.getPhotos();
    emit(
      state.copyWith(
        photos: photos,
      ),
    );
  }

  Future<void> _onPhotosLoaded(MainPhotosLoaded event,Emitter<MainState> emit) async {
    await _photosRepository.loadPhotos(false);
    List<Photo> photos = _photosRepository.getPhotos();
    emit(
      state.copyWith(
        photos: photos,
      ),
    );
  }
}
