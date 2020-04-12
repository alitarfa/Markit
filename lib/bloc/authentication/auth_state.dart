part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

class DoRegisterSuccessState extends AuthState {
  final RegisterResponse result;

  DoRegisterSuccessState({this.result});

  @override
  List<Object> get props => null;
}

class DoRegisterFailed extends AuthState {
  final String message;

  DoRegisterFailed({this.message});

  @override
  // TODO: implement props
  List<Object> get props => null;
}

class DoLoginSuccessState extends AuthState {
  final LoginResponse result;

  DoLoginSuccessState({this.result});

  @override
  // TODO: implement props
  List<Object> get props => null;
}

class DoLoginFailedState extends AuthState {
  final String message;

  DoLoginFailedState(this.message);

  @override
  // TODO: implement props
  List<Object> get props => null;
}
