import 'package:flutter/material.dart';
import 'package:uem_food/pages/home_page.dart';
import 'package:uem_food/pages/product_list.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //container for written text
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 255, 141, 141),
                Color.fromARGB(255, 255, 0, 0)
              ],
            ),
          ),
          child: Column(
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    "Foo",
                    style: TextStyle(
                        fontSize: 80,
                        color: Colors.white,
                        fontFamily: "updock"),
                  ),
                ),
              ),
              //container for tap to continue
              Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  //textbutton to navigate
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const ProductList();
                        }));
                      },
                      child: const Text(
                        "Tap to continue   -->",
                        style: TextStyle(color: Colors.black),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
