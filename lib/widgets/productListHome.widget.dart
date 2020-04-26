import 'package:flutter/material.dart';
import 'package:layouts_flutter/widgets/productItem.widget.dart';

Widget productListHome(BuildContext context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        productItem(context, "assets/product-1.png", "Antena", "R\$ 300",
            "Preta", "home"),
        productItem(context, "assets/product-2.png", "Relógio", "R\$ 150",
            "Ponteiro Preto", "home"),
        productItem(context, "assets/product-3.png", "Caixa de Som", "R\$ 450",
            "JBL Branca", "home"),
        productItem(context, "assets/product-4.png", "Sacola", "R\$ 39,99",
            "Sacola Branca", "home"),
        productItem(context, "assets/product-5.png", "Smartphone", "R\$ 450",
            "Smartphone Preto com Bordas Cinzas", "home"),
        productItem(context, "assets/product-6.png", "Microfone", "R\$ 450",
            "Microfone Preto", "home"),
        productItem(context, "assets/product-7.png", "Fones Sem fio", "R\$ 450",
            "Sem Marca Branco", "home"),
        productItem(context, "assets/product-8.png", "Caixa de Som", "R\$ 450",
            "JBL Branca", "home"),
        productItem(context, "assets/product-9.png", "Caixa de Som", "R\$ 450",
            "JBL Branca", "home"),
        productItem(context, "assets/product-10.png", "Camisa Nile",
            "R\$ 349,99", "Azul Marinho", "home"),
      ],
    ),
  );
}
