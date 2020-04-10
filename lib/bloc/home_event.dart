part of 'home_bloc.dart';

abstract class RestaurantEvent extends Equatable {
  const RestaurantEvent();
}

// this event to get the list of Restaurants

class GetRestaurantsEvent extends RestaurantEvent {
  final BuildContext context;

  GetRestaurantsEvent({@required this.context});

  @override
  List<Object> get props => null;
}

/*
class PostHome extends HomeEvent {
  final BuildContext context;
  final Map<String, dynamic> body;

  PostHome({@required this.context, @required this.body});


  @override
  List<Object> get props => null;
}*/
