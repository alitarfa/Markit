import 'package:e_commerce_flutter/components/profile/itemProfile.dart';
import 'package:e_commerce_flutter/models/profileItemModels.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  List<ProfileItemModels> listItems = [
    new ProfileItemModels(0xffeee8ff, Icons.payment, 0xfff8b758, "My payments",0),
    new ProfileItemModels(0xfffeebdd, Icons.store_mall_directory, 0xfffaa263,"My Orders",0),
    new ProfileItemModels(0xffe4ecff, Icons.store_mall_directory, 0xff5081f5, "My Comments",3),
    new ProfileItemModels(0xffeee8ff, Icons.store_mall_directory, 0xff7e55f3,"Facebook",10)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Color(0xff202857)),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          backgroundColor: Color(0xfff3f6fc),
          title: Text("Profile", style: TextStyle(color: Color(0xff202857))),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.edit,
                color: Color(0xff202857),
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Container(
          color: Color(0xfff3f6fc),
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: 32,
                  left: MediaQuery.of(context).size.width / 2 - 135 / 2,
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: 135.0,
                          height: 135.0,
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/im.jpeg')))),
                      SizedBox(height: 16),
                      Text("Tarfa Ali",
                          style: TextStyle(
                              color: Color(0xff202857),
                              fontSize: 18,
                              fontWeight: FontWeight.bold))
                    ],
                  )),
              Positioned(
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16)),
                      color: Colors.white,
                    ),
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      padding: EdgeInsets.only(top: 40),
                        child: Column(
                      children: listItems.map((ProfileItemModels item) {
                        return ItemProfile(item);
                      }).toList(),
                    )),
                  ))
            ],
          ),
        ));
  }
}
