import 'package:badges/badges.dart';
import 'package:e_commerce_flutter/components/home/HomePage.dart';
import 'package:e_commerce_flutter/components/notifcation/notification.dart';
import 'package:e_commerce_flutter/components/order/order.dart';
import 'package:e_commerce_flutter/components/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RootPageState();
  }
}

class RootPageState extends State<RootPage> {
  int _index = 0;
  Widget currentPage;
  HomePage homePage;
  OrderPage orderPage;
  NotificationPage notification;
  ProfilePage profilePage;
  List<Widget> listPagesOfTabs;

  @override
  void initState() {
    super.initState();
    this.homePage = new HomePage();
    this.orderPage = new OrderPage();
    this.notification = new NotificationPage();
    this.profilePage = new ProfilePage();
    this.listPagesOfTabs = [homePage, orderPage, notification, profilePage];
    this.currentPage = this.homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Material(
          elevation: 4,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), topLeft: Radius.circular(12)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _index,
            onTap: (int index) {
              setState(() {
                _index = index;
                currentPage = listPagesOfTabs[index];
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: Text("Home")),
             /* BottomNavigationBarItem(
                  icon: Icon(Icons.category, color: Colors.grey),
                  title: Text("Category")),*/
              BottomNavigationBarItem(
                  icon: Badge(
                    badgeContent: Text(
                      '3',
                      style: TextStyle(color: Colors.white),
                    ),
                    child: Icon(Icons.shopping_cart),
                  ),
                  title: Text("Order")),
              BottomNavigationBarItem(
                  icon: Badge(
                    badgeContent:
                        Text('3', style: TextStyle(color: Colors.white)),
                    child: Icon(Icons.notifications),
                  ),
                  title: Text("Notification")),
            ],
          ),
        ),
        body: currentPage);
  }


}
