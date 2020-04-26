import 'package:flutter/material.dart';
import 'package:layouts_flutter/widgets/Search.widget.dart';
import 'package:layouts_flutter/widgets/listCategory.widget.dart';
import 'package:layouts_flutter/widgets/productListHome.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: Color(0xFFF5F5F5),
        height: double.infinity,
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Search_Widget(),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Container(
                  height: 90,
                  child: categoryList(),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Best Selling", style: TextStyle(fontSize: 30)),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 330,
                  child: productListHome(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
