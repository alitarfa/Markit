import 'package:e_commerce_flutter/bloc/restaurant/restaurant_bloc.dart';
import 'package:e_commerce_flutter/components/foodCategory/foodCategory.dart';
import 'package:e_commerce_flutter/components/listFood/foodCardItem.dart';
import 'package:e_commerce_flutter/components/profile/profile.dart';
import 'package:e_commerce_flutter/models/food.dart';
import 'package:e_commerce_flutter/models/restaurant/restaurant.dart';
import 'package:e_commerce_flutter/ui/search/address.dart';
import 'package:e_commerce_flutter/ui/search/serchInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomPageState();
  }
}

class _HomPageState extends State<HomePage> {
  List<Food> _listItemFood = [
    Food("", 1, ""),
  ];

  List<Restaurant> listRestaurant = new List();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantBloc>(
      create: (context) => RestaurantBloc()
        ..add(GetRestaurantAroundMeEvent(context, 48.788371, 2.011203, 50)),
      child: BlocListener<RestaurantBloc, RestaurantState>(
        listener: (context, state) {},
        child: BlocBuilder<RestaurantBloc, RestaurantState>(
          builder: (context, state) {
            if (state is RestaurantLoading) {
              print("Loaading data ...");
              return _showLoadingIndicator();
            }

            if (state is RestaurantSuccess) {
              return ListView(
                padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Market it",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold)),
                          Text("Amazing Places",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      InkWell(
                        child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('images/im.jpeg')))),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()));
                        },
                      )
                    ],
                  ),
                  Addresses(),
                  RestaurantCategory(state.results),
                  SizedBox(height: 10),
                  SearchInput(),
                  SizedBox(height: 20),

                  /**
                   * This Section of Restaurant Around ME
                   */
                  Column(
                    children: _listItemFood.map((Food food) {
                      return _builderItemFood(food);
                    }).toList(),
                  )
                ],
              );
            }

            return Container();
          },
        ),
      ),
    );
  }

  Widget _builderItemFood(food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: FoodCardItem(food),
    );
  }

  Widget _showLoadingIndicator() {
    return Center(child: CircularProgressIndicator());
  }
}
