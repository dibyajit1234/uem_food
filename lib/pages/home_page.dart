import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              Text(
                'Order your favourite food!',
                style: TextStyle(fontFamily: "order", fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
