import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreDishesItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StoreDishesItemState();
  }
}

class _StoreDishesItemState extends State<StoreDishesItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(4),
        child: Container(
          padding: EdgeInsets.only(top: 2, bottom: 2),
          decoration: BoxDecoration(
           // color: Color(0xfff5bd54),
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(50.0),
          ),
          width: 78,
          height: 160,
          child: Container(
              child: Padding(
            padding: EdgeInsets.all(3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFD3D3D3), width: 1.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  //child: Image.asset("images/im.jpeg",fit: BoxFit.cover),
                  child:  Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/im.jpeg')
                          )
                      )),
                ),
                SizedBox(height: 16),
                Text("Pizza")
              ],
            ),
          )),
        ));
  }
}
