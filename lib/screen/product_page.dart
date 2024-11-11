import 'package:cart/model/cart_grid.dart';
import 'package:cart/widgets/add_to_cart.dart';
import 'package:cart/widgets/product_page/product_slide.dart';
import 'package:cart/widgets/product_page_appbar.dart';
import 'package:cart/widgets/quantity_add_to_cart.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final CartItems cartItems;
  const ProductPage({
    super.key,
    required this.cartItems,
  });

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentNumber = 1;
  int currentSlide = 0;
  int currentColor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      floatingActionButton: AddToCart(cartItems: widget.cartItems),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey.shade200,
                                ),
                                child: const Icon(
                                  Icons.arrow_back,
                                  size: 18,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey.shade200,
                                  ),
                                  child: const Icon(
                                    Icons.share,
                                    size: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey.shade200,
                                  ),
                                  child: const Icon(
                                    Icons.shopify_rounded,
                                    size: 18,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        ProductSlide(
                          widget: widget,
                          onChange: (value) {
                            setState(() {
                              currentSlide = value;
                            });
                          },
                          currentSlide: currentSlide,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.solid,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 35,
                                width: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Price Details",
                                  ),
                                ),
                              ),
                              QuantityAddToCart(
                                currentNumber: currentNumber,
                                add: () {
                                  setState(() {
                                    currentNumber++;
                                  });
                                },
                                remove: () {
                                  if (currentNumber != 1) {
                                    setState(() {
                                      currentNumber--;
                                    });
                                  }
                                },
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Row(
                                children: List.generate(
                                  5,
                                  (index) => const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "(${widget.cartItems.rateing.toString()})",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Description",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.cartItems.desc,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 35,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Read More",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey.shade100,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Specification",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              top: 160,
              left: 330,
              child: Column(
                children: List.generate(
                  widget.cartItems.color.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentColor = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 30,
                      width: 30,
                      margin: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentColor == index
                            ? Colors.white
                            : widget.cartItems.color[index],
                        border: currentColor == index
                            ? Border.all(
                                color: widget.cartItems.color[index],
                              )
                            : null,
                      ),
                      padding: currentColor == index
                          ? const EdgeInsets.all(2)
                          : null,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: widget.cartItems.color[index],
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
