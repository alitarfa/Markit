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
  Future<Response<RestaurantListResponse>> findListRestaurants() {
    final $url = 'https://soon-back.herokuapp.com/api/v0/restaurant';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<RestaurantListResponse, RestaurantListResponse>($request);
  }
}
