part of 'home_bloc.dart';

abstract class RestaurantState extends Equatable {
  const RestaurantState();
}

class RestaurantInitial extends RestaurantState {
  @override
  List<Object> get props => [];
}

class RestaurantLoading extends RestaurantState {
  @override
  List<Object> get props => null;
}

class RestaurantSuccess extends RestaurantState {
  final List<Restaurant> results;
  RestaurantSuccess({@required this.results});
  @override
  List<Object> get props => null;
}

class RestaurantFailed extends RestaurantState {
  final String msg;
  RestaurantFailed({this.msg});
  @override
  List<Object> get props => null;
}

class PostHomeSuccess extends RestaurantState {
  @override
  List<Object> get props => null;
}


class PostHomeFailed extends RestaurantState {
  final String msg;
  PostHomeFailed({this.msg});
  @override
  List<Object> get props => null;
}
