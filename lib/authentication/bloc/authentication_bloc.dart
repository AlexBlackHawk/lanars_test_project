import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
  }) : _authenticationRepository = authenticationRepository,
       super(const AuthenticationState.unknown()) {
    on<AuthenticationSubscriptionRequested>(_onSubscriptionRequested);
  }

  final AuthenticationRepository _authenticationRepository;

  Future<void> _onSubscriptionRequested(AuthenticationSubscriptionRequested event, Emitter<AuthenticationState> emit) {
    return emit.onEach(
      _authenticationRepository.status,
      onData: (status) async {
        switch (status) {
          case AuthStatus.unauthenticated:
            return emit(const AuthenticationState.unauthenticated());
          case AuthStatus.authenticated:
            try {
              final user = _authenticationRepository.getUser();
              return emit(
                AuthenticationState.authenticated(user),
              );
            } catch (e) {
              return emit(
                const AuthenticationState.unauthenticated(),
              );
            }
          case AuthStatus.unknown:
            return emit(const AuthenticationState.unknown());
        }
      },
      onError: addError,
    );
  }
}
