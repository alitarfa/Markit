part of 'restaurant_bloc.dart';

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





class GetRestaurantAroundMeEvent extends RestaurantEvent {
  final BuildContext context;
  final double lat;
  final double lng;
  final double distance;

  GetRestaurantAroundMeEvent(this.context, this.lat, this.lng, this.distance);

  @override
  // TODO: implement props
  List<Object> get props => null;
}

class FindRestaurantByNameEvent extends RestaurantEvent {
  final BuildContext context;
  final String name;

  FindRestaurantByNameEvent(this.context, this.name);

  @override
  // TODO: implement props
  List<Object> get props => null;
}
