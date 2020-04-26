import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  String image;
  var title;
  var desc;
  ProductDetail({
    @required this.image,
    @required this.title,
    @required this.desc,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0,
              expandedHeight: 500,
              floating: false,
              pinned: true, // fixo na tela
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  tag: image,
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView(
          padding: EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              desc,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Details",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "É um fato estabelecido há muito tempo que um leitor se distrai com o conteúdo legível de uma página ao examinar seu layout. O objetivo de usar Lorem Ipsum é que ele tem uma distribuição de letras mais ou menos normal, em vez de usar 'Conteúdo aqui, conteúdo aqui', fazendo com que pareça um inglês legível..",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
