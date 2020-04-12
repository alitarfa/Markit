part of 'auth_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();
}

class InitProfileState extends ProfileState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class OnProfileLoadingState extends ProfileState {
  OnProfileLoadingState();

  @override
  // TODO: implement props
  List<Object> get props => null;
}

class OnProfileLoadedSuccess extends ProfileState {
  final ProfileResponse result;

  OnProfileLoadedSuccess(this.result);

  @override
  // TODO: implement props
  List<Object> get props => null;
}

class OnProfileLoadedFailed extends ProfileState {
  final String message;

  OnProfileLoadedFailed(this.message);

  @override
  // TODO: implement props
  List<Object> get props => null;
}
