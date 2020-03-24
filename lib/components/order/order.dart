import 'package:e_commerce_flutter/components/order/cardOrderItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OrderPageState();
  }

}


class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        title: Text("Orders", style: TextStyle(color: Colors.black54),),),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        children: <Widget>[
          CardOrderItem(),
          CardOrderItem(),
          CardOrderItem(),
          CardOrderItem(),
          CardOrderItem(),
          CardOrderItem(),
          CardOrderItem(),
          CardOrderItem(),
          CardOrderItem(),
          CardOrderItem(),

        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer() {
    return Container(
      height: 200.0,
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Subtotal",
                style: TextStyle(
                    color: Color(0xFF9BA7C6),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "23.0",
                style: TextStyle(
                    color: Color(0xFF6C6D6D),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Discount",
                style: TextStyle(
                    color: Color(0xFF9BA7C6),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "10.0",
                style: TextStyle(
                    color: Color(0xFF6C6D6D),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Tax",
                style: TextStyle(
                    color: Color(0xFF9BA7C6),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "0.5",
                style: TextStyle(
                    color: Color(0xFF6C6D6D),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(
            height: 2.0,
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Cart Total",
                style: TextStyle(
                    color: Color(0xFF9BA7C6),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "26.5",
                style: TextStyle(
                    color: Color(0xFF6C6D6D),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          GestureDetector(
            onTap: () {
              //Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
            },
            child: Container(
              height: 40.0,
              decoration: BoxDecoration(
                color: Theme
                    .of(context)
                    .primaryColor,
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: Center(
                child: Text(
                  "Proceed To Checkout",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}