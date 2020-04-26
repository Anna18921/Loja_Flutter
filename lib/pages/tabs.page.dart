import 'package:flutter/material.dart';
import 'package:layouts_flutter/pages/Cart.page.dart';
import 'package:layouts_flutter/pages/home.page.dart';
import 'package:layouts_flutter/pages/login.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          CartPage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.home),
            text: "Home",
          ),
          Tab(
            icon: Icon(Icons.shopping_cart),
            text: "Cart",
          ),
          Tab(
            icon: Icon(Icons.account_circle),
            text: "Profile",
          ),
        ],
        labelColor: Colors.green,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.green,
      ),
    );
  }
}
