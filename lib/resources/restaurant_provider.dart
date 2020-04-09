import 'dart:convert';

import 'package:e_commerce_flutter/models/ResponseModel.dart';
import 'package:e_commerce_flutter/models/RestaurantMode.dart';
import 'package:http/http.dart';
import 'dart:developer' as developer;

class RestaurantProvider {
  String URL_RESTAURANT = "https://soon-back.herokuapp.com/api/v0/restaurant";
  String API_KEY = "";

  Client client = new Client();

  Map<String, String> headers = {"Content-type": "application/json"};

  // this just for test we gonna work on the other One
  Future<List<RestaurantModel>> fetchRestaurants() async {
    List<RestaurantModel> list;

    final response = await client.get(URL_RESTAURANT);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var rest = data["response"] as List;

      rest.forEach((elem) {
        print(elem);
        print("***************************************");

        list.add(RestaurantModel.fromJson(elem));

      });

      return list;
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
