part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

final class LoginEmailChanged extends LoginEvent {
  const LoginEmailChanged({required this.email});

  final String email;

  @override
  List<Object> get props => [email];
}

final class LoginEmailUnfocused extends LoginEvent {}

final class LoginPasswordChanged extends LoginEvent {
  const LoginPasswordChanged({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}

final class LoginPasswordUnfocused extends LoginEvent {}

final class LoginSubmitted extends LoginEvent {
  const LoginSubmitted();
}
