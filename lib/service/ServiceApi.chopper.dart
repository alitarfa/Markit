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
  Future<Response<RegisterResponse>> register(Map<String, dynamic> boy) {
    final $url = 'https://soon-back.herokuapp.com/api/v0/register';
    final $body = boy;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<RegisterResponse, RegisterResponse>($request);
  }

  @override
  Future<Response<LoginResponse>> login(Map<String, dynamic> boy) {
    final $url = 'https://soon-back.herokuapp.com/api/v0/login';
    final $body = boy;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<LoginResponse, LoginResponse>($request);
  }

  @override
  Future<Response<ProfileResponse>> findProfile(String id) {
    final $url = 'https://soon-back.herokuapp.com/api/v0/profile/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ProfileResponse, ProfileResponse>($request);
  }

  @override
  Future<Response<RestaurantListResponse>> findListRestaurants() {
    final $url = 'https://soon-back.herokuapp.com/api/v0/restaurant';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<RestaurantListResponse, RestaurantListResponse>($request);
  }

  @override
  Future<Response<RestaurantListResponse>> findListRestaurantsAroundMe(
      double lat, double lng, double distance) {
    final $url = 'https://soon-back.herokuapp.com/api/v0/restaurant/find';
    final $params = <String, dynamic>{
      'lat': lat,
      'lng': lng,
      'distance': distance
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client
        .send<RestaurantListResponse, RestaurantListResponse>($request);
  }

  @override
  Future<Response<Restaurant>> findRestaurantByName(String name) {
    final $url = 'https://soon-back.herokuapp.com/api/v0/restaurant/$name';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Restaurant, Restaurant>($request);
  }
}
