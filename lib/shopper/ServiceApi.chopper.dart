// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ServiceApi.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ServiceApi extends ServiceApi {
  _$ServiceApi([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ServiceApi;

  @override
  Future<ResponseModel<List<RestaurantModel>>> findListRestaurants() {
    final $url = 'https://soon-back.herokuapp.com/api/v0/restaurant';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<RestaurantModel>, RestaurantModel>($request);
  }

  @override
  Future<ResponseModel<List<RestaurantModel>>> findArroundMeRestaurants(
      double lat, double lng, double distance) {
    final $url =
        'https://soon-back.herokuapp.com/api/v0/restuarant/find?lat=$lat&&lng=$lng&&distance=$distance';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<RestaurantModel>, RestaurantModel>($request);
  }

  @override
  Future<ResponseModel<RestaurantModel>> findRestaurantById(String id) {
    final $url = 'https://soon-back.herokuapp.com/api/v0/restaurant/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RestaurantModel, RestaurantModel>($request);
  }
}
