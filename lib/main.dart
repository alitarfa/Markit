import 'package:e_commerce_flutter/blocs/ListRestaurantBloc.dart';
import 'package:e_commerce_flutter/models/RestaurantMode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  RestaurantListBloc blocResta = new RestaurantListBloc();

  @override
  Widget build(BuildContext context) {
    blocResta.fetchLondonWeather();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: StreamBuilder(
            stream: blocResta.listRestaurant,
            builder: (context, AsyncSnapshot<List<RestaurantModel>> snapshot) {
              if (snapshot.hasData) {
                return Container(
                  child: Text(snapshot.data.length.toString()),
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }

              return Center(child: CircularProgressIndicator());
            }),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
