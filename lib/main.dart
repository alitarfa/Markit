import 'package:chopper/chopper.dart';
import 'package:e_commerce_flutter/bloc/home_bloc.dart';
import 'package:e_commerce_flutter/shopper/ServiceApi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: BlocProvider<RestaurantBloc>(
          create: (context) =>
              RestaurantBloc()..add(GetRestaurantsEvent(context: context)),
          child: BlocListener<RestaurantBloc, RestaurantState>(
              listener: (context, state) {
            print(state);

            if (state is RestaurantSuccess) {
              print("we are here Now we did it");
              print(state.results.length);
            }

            Container(
              child: Text("we are"),
            );
          }, child: BlocBuilder<RestaurantBloc, RestaurantState>(
            builder: (context, state) {
              return Text("Hi ");
            },
          )),
        )),
        debugShowCheckedModeBanner: false,
      ),

      create: (_)=> ServiceApi.create(),
      dispose: (_,ServiceApi serviceApi)=> serviceApi.client.dispose(),
    );
  }
}
