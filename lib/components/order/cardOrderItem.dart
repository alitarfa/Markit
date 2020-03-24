import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardOrderItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CardOrderItemState();
  }
}

class _CardOrderItemState extends State<CardOrderItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        height: 90,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 75,
                  width : 75,
                  child: Image.asset("images/im.jpeg", fit: BoxFit.cover),
                ),
              ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text("Product Name", style: TextStyle(fontSize: 18),),
              ),
              flex: 2,
            ),
            Container(
                margin: EdgeInsets.only(right: 16),
                width: 40,
                height: 75,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD3D3D3), width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                          onTap: () {},
                          child: Icon(Icons.keyboard_arrow_up,
                              color: Color(0xFFD3D3D3))),
                      Text(
                        "0",
                        style: TextStyle(fontSize: 18.0, color: Colors.grey),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Icon(Icons.keyboard_arrow_down,
                              color: Color(0xFFD3D3D3))),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
