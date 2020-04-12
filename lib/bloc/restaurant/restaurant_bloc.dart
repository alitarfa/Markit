import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chopper/src/response.dart';
import 'package:e_commerce_flutter/models/restaurant/restaurant.dart';
import 'package:e_commerce_flutter/models/restaurant/restaurant_list_response.dart';
import 'package:e_commerce_flutter/service/ServiceApi.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

part 'restaurant_event.dart';

part 'restaurant_state.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  @override
  RestaurantState get initialState => RestaurantInitial();

  @override
  Stream<RestaurantState> mapEventToState(RestaurantEvent event) async* {
    if (event is GetRestaurantsEvent) {
      final response = await _getRestaurants(event.context);
      if (response.status == 200) print(response.response.length);
      yield RestaurantSuccess(results: response.response.toList());
    }

    // Get List Around Me Restaurant
    if (event is GetRestaurantAroundMeEvent) {
      yield RestaurantLoading();
      print("EVENT::GET_RESTAURANT_SUROUND_ME");
      Response<RestaurantListResponse> response =
          await Provider.of<ServiceApi>(event.context)
              .findListRestaurantsAroundMe(
                  event.lat, event.lng, event.distance);
      print("EVENT::RESPONSE");
      yield RestaurantSuccess(results: response.body.response.toList());
    }
  }
}

Future<RestaurantListResponse> _getRestaurants(BuildContext context) async {
  final response = await Provider.of<ServiceApi>(context).findListRestaurants();
  print(response.error);
  return response.body;
}
