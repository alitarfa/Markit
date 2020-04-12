part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

// this event to get the list of Restaurants

class GetRestaurantsEvent extends AuthEvent {
  final BuildContext context;
  GetRestaurantsEvent({@required this.context});
  @override
  List<Object> get props => null;
}


// Register Event
class DoInitEvent extends AuthEvent {
  DoInitEvent();
  @override
  List<Object> get props => null;
}

// Register Event
class DoRegisterEvent extends AuthEvent {
  final BuildContext context;
  final Map<String, dynamic> body;
  DoRegisterEvent({@required this.context, @required this.body});
  @override
  List<Object> get props => null;
}

// Login Event
class DoLoginEvent extends AuthEvent {
  final BuildContext context;
  final Map<String, dynamic> body;
  DoLoginEvent({@required this.context, @required this.body});
  @override
  // TODO: implement props
  List<Object> get props => null;
}
