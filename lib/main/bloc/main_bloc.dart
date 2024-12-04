import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<MainPhotosLoaded>(_onPhotosLoaded);
  }

  void _onPhotosLoaded(MainPhotosLoaded event,Emitter<MainState> emit) {
    List<Photo> photos = <Photo>[];
    emit(
      state.copyWith(
        photos: photos,
      ),
    );
  }
}
