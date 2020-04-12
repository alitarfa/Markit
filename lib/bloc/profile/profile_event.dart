part of 'auth_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();
}

class GetProfileEvent extends ProfileEvent {
  final String id;
  final BuildContext context;

  GetProfileEvent({this.context, this.id});

  @override
  // TODO: implement props
  List<Object> get props => null;
}

class UpdateProfileEvent extends ProfileEvent {
  @override
  // TODO: implement props
  List<Object> get props => null;
}
