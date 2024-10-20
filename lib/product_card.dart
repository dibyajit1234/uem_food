import 'package:flutter/material.dart';
import 'package:uem_food/globalvariable.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Text("${resturants[0]['canteen']}"),
    );
  }
}
