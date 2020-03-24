import 'package:e_commerce_flutter/components/order/cardOrderItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "My",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text("Order",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
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
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 150.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: 16.0,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Total",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "26.5",
                        style: TextStyle(
                            color: Color(0xFF6C6D6D),
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Divider(
                height: 2.0,
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
                    width: 130,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Checkout",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
