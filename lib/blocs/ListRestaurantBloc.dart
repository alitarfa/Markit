import 'package:e_commerce_flutter/models/RestaurantMode.dart';
import 'package:e_commerce_flutter/resources/Repository.dart';
import 'package:rxdart/rxdart.dart';

class RestaurantListBloc {
  Repository repository = new Repository();

  final _restaurantFetcher = PublishSubject<List<RestaurantModel>>();

  Observable<List<RestaurantModel>> get listRestaurant =>
      _restaurantFetcher.stream;

  fetchLondonWeather() async {
    List<RestaurantModel> restResult = await repository.getRestaurantList();
    _restaurantFetcher.sink.add(restResult);
  }

  dispose() {
    _restaurantFetcher.close();
  }
}
