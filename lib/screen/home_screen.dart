import 'package:cart/model/cart_grid.dart';
import 'package:cart/model/popular.dart';
import 'package:cart/widgets/home_screen_grid_view.dart';
import 'package:cart/widgets/populer_items.dart';
import 'package:cart/widgets/search_area.dart';
import 'package:cart/widgets/slid_secttion.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  right: 20,
                  left: 20,
                ),
                child: SearchArea(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: SlidSection(),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const PopularItems(),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New Arrivals",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          mainAxisExtent: 206,
                        ),
                        itemCount: cartItems.length,
                        itemBuilder: (context, index) {
                          return HomeScreenGridView(
                            cartItems: cartItems[index],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
