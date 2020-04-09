

import 'package:chopper/chopper.dart';
import 'package:e_commerce_flutter/models/ResponseModel.dart';
import 'package:e_commerce_flutter/models/RestaurantMode.dart';

part 'ServiceApi.chopper.dart';

@ChopperApi(baseUrl: 'https://soon-back.herokuapp.com/api/v0')
abstract class ServiceApi  extends ChopperService {

  @Get(path: '/restaurant')
  Future<ResponseModel<List<RestaurantModel>>> findListRestaurants();

  @Get(path: '/restuarant/find?lat={lat}&&lng={lng}&&distance={distance}')
  Future<ResponseModel<List<RestaurantModel>>> findArroundMeRestaurants(@Path('lat') double lat,@Path('lng') double lng,@Path('distance') double distance);

  @Get(path: '/restaurant/{id}')
  Future<ResponseModel<RestaurantModel>> findRestaurantById(@Path('id') String id);

  static ServiceApi create() {
    final client = ChopperClient(
      baseUrl: 'https://sindibadinternational.net/',
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