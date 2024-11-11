import 'package:cart/model/cart_grid.dart';
import 'package:cart/model/popular.dart';
import 'package:cart/screen/product_page.dart';
import 'package:flutter/material.dart';

class HomeScreenGridView extends StatelessWidget {
  final CartItems cartItems;
  const HomeScreenGridView({
    super.key,
    required this.cartItems,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductPage(cartItems: cartItems),
              ),
            );
          },
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 239, 237, 237),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color.fromARGB(255, 207, 207, 207),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("-"),
                            Text(
                              cartItems.rate,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: SizedBox(
                      height: 90,
                      width: 90,
                      child: Image.asset(
                        cartItems.image,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            cartItems.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            height: 18,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Text(
                                "\$${cartItems.price.toString()}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        cartItems.catogery,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned.fill(
          bottom: 165,
          left: 125,
          child: Container(
            height: 35,
            width: 35,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              color: Colors.blue,
            ),
            child: const Icon(
              Icons.favorite,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 10,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 15,
            ),
          ),
        ),
      ],
    );
  }
}
