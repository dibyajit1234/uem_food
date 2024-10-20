import 'package:flutter/material.dart';
import 'package:uem_food/globalvariable.dart';
import 'package:uem_food/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic>? products = resturants[0]['products'] as List<dynamic>?;
    int? productcount = products?.length;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(
        color: Colors.white,
        width: 2.5,
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //foodgo and logo
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Foodgo",
                            style:
                                TextStyle(fontFamily: "updock", fontSize: 45),
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
                  //gap sized box
                  const SizedBox(
                    height: 30,
                  ),
                  //search bar
                  Center(
                    child: SizedBox(
                      width: 320,
                      child: TextField(
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 187, 15, 3),
                          ),
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
                  ),
                  //gap
                  const SizedBox(
                    height: 20,
                  ),
                  //product card
                  Center(
                    child: SizedBox(
                      height: 1000,
                      width: 1000,
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, mainAxisSpacing: 10),
                          itemCount: productcount,
                          itemBuilder: (context, index) {
                            return ProductCard(
                              imageurl: "${products![index]['imageUrl']}",
                              productName: "${products[index]['title']}",
                              price: products[index]['price'],
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
