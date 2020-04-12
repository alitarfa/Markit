import 'package:chopper/chopper.dart';
import 'package:e_commerce_flutter/models/authentication/login_response.dart';
import 'package:e_commerce_flutter/models/authentication/register_response.dart';
import 'package:e_commerce_flutter/models/restaurant/restaurant.dart';
import 'package:e_commerce_flutter/models/restaurant/restaurant_list_response.dart';
import 'package:e_commerce_flutter/models/user/profile_response.dart';

import '../shopper/built_value_converter.dart';

part 'ServiceApi.chopper.dart';

@ChopperApi(baseUrl: 'https://soon-back.herokuapp.com/api/v0')
abstract class ServiceApi extends ChopperService {
  //**************** We Gonna work on Authentication Part ***************************

  @Post(path: '/register')
  Future<Response<RegisterResponse>> register(@Body() Map<String, dynamic> boy);

  @Post(path: '/login')
  Future<Response<LoginResponse>> login(@Body() Map<String, dynamic> boy);

  @Get(path: '/profile/{id}')
  Future<Response<ProfileResponse>> findProfile(@Path('id') String id);

  @Get(path: '/restaurant')
  Future<Response<RestaurantListResponse>> findListRestaurants();

/*
  api/v0/restaurant/find?lat=48.788371&lng=2.011203&distance=50
*/

  @Get(path: '/restaurant/find')
  Future<Response<RestaurantListResponse>> findListRestaurantsAroundMe(
      @Query('lat') double lat,
      @Query('lng') double lng,
      @Query('distance') double distance);

  @Get(path: '/restaurant/{name}')
  Future<Response<Restaurant>> findRestaurantByName(@Path('name') String name);

  static ServiceApi create() {
    final client = ChopperClient(
      baseUrl: 'https://soon-back.herokuapp.com/api/v0',
      services: [
        _$ServiceApi(),
      ],
      //converter: JsonConverter(),
      converter: BuiltValueConverter(),
      errorConverter: BuiltValueConverter(),
      //converter: FormUrlEncodedConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        (Response response) async {
          if (response.statusCode == 404) {
            chopperLogger.severe('404 NOT FOUND');
          }
          return response;
        },
      ],
    );
    return _$ServiceApi(client);
  }
}
