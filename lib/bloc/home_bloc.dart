import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:e_commerce_flutter/models/restaurant/restaurant.dart';
import 'package:e_commerce_flutter/models/restaurant/restaurant_list_response.dart';
import 'package:e_commerce_flutter/shopper/ServiceApi.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

part 'home_event.dart';

part 'home_state.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  @override
  RestaurantState get initialState => RestaurantInitial();

  @override
  Stream<RestaurantState> mapEventToState(RestaurantEvent event) async* {
    if (event is GetRestaurantsEvent) {
      final response = await _getRestaurants(event.context);
      if (response.status == 200)
        yield RestaurantSuccess(results: response.response.toList());
    }
  }
}

Future<RestaurantListResponse> _getRestaurants(BuildContext context) async {
  print("we have called the API");
  final response = await Provider.of<ServiceApi>(context).findListRestaurants();
  print(response.error);
  return response.body;
}
