import 'package:e_commerce_flutter/models/RestaurantMode.dart';
import 'package:e_commerce_flutter/resources/restaurant_provider.dart';

class Repository {
  RestaurantProvider restaurantProvider = new RestaurantProvider();

  Future<List<RestaurantModel>> getRestaurantList() =>
      restaurantProvider.fetchRestaurants();

  
}
