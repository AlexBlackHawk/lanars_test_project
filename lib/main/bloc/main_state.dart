part of 'main_bloc.dart';

final class MainState extends Equatable {
  const MainState({
    this.photos = const <Photo>[],
  });

  final List<Photo> photos;

  MainState copyWith({
    List<Photo>? photos,
  }) {
    return MainState(
      photos: photos ?? this.photos,
    );
  }

  @override
  List<Object> get props => [
    photos
  ];
}
