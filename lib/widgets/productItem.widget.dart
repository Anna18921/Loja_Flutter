import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layouts_flutter/pages/ProductDetail.page.dart';

Widget productItem(
    BuildContext context, image, title, price, desc, productList) {
  return productList == 'home'
      ? Container(
          width: 170,
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey[300],
                  offset: Offset(1, 1),
                  blurRadius: 5.0,
                  spreadRadius: 2,
                ),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetail(
                                image: image,
                                title: title,
                                desc: desc,
                              )));
                },
                child: Hero(
                  tag: image,
                  child: Image.asset(
                    image,
                    width: 170,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                desc,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
              Text(
                price,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        )
      : Container(
          height: 120,
          margin: EdgeInsets.all(5),
          child: Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title),
                      Text(price, style: TextStyle(color: Colors.green)),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              width: 40,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text("-"),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 40,
                              child: Text("0"),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 40,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text("+"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        );
}
