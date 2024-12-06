part of 'main_bloc.dart';

sealed class MainEvent extends Equatable {
  const MainEvent();

  @override
  List<Object> get props => [];
}

final class MainPhotosLoaded extends MainEvent {
  const MainPhotosLoaded();
}

final class MainPhotosRefreshed extends MainEvent {
  const MainPhotosRefreshed();
}
