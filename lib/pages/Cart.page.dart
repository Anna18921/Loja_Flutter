import 'package:flutter/material.dart';
import 'package:layouts_flutter/widgets/productList.widget.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 120,
              child: productList(context),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 80,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "TOTAL",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "R\$ 888,00",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
