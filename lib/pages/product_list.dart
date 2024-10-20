import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(
        color: Colors.white,
        width: 2.5,
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Foodgo",
                        style: TextStyle(fontFamily: "updock", fontSize: 45),
                      ),
                      //Text("order your favourite")
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        "/home/dibyajit/AndroidStudioProjects/uem_food/assets/images/profile.jpg"),
                  )
                ],
              ),
              const Text(
                'Order your favourite food!',
                style: TextStyle(fontFamily: "order", fontSize: 17),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: TextField(
                  cursorHeight: 20,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "search",
                    filled: true,
                    border: border,
                    enabledBorder: border,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
