import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageurl;
  final String productName;
  final int price;
  const ProductCard({
    super.key,
    required this.productName,
    required this.imageurl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image(
                image: AssetImage(imageurl),
                width: 80,
                height: 80,
              ),
            ),
            Text(productName),
            Text("${price}  ₹"),
          ],
        ),
      ),
    );
  }
}
