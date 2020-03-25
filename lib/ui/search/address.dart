import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addresses extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddressesState();
  }
}

class _AddressesState extends State<Addresses> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: EdgeInsets.all(3),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xFFD3D3D3), width: 1.0),
          borderRadius: BorderRadius.circular(50.0),
        ),
        height: 40,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("7 Rue Pierre Curie 93300 (Auberviller)"),
            Icon(Icons.gps_fixed)
          ],
        ),
      ),
    ));
  }
}
