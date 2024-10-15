import 'package:flutter/material.dart';
import 'package:uem_food/pages/home_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                 Color.fromARGB(255, 255, 141, 141),
                 Color.fromARGB(255, 255, 17, 0)
              ],
            ),
          ),
          child: Column(
            children: [
              const Expanded(
                child: Center(
                  child: Text(
                    "Food go",
                    style: TextStyle(
                        fontSize: 80,
                        color: Colors.white,
                        fontFamily: "updock"),
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const HomePage();
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
