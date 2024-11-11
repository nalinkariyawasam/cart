
import 'package:cart/screen/product_page.dart';
import 'package:flutter/material.dart';

class ProductPageThreeDot extends StatelessWidget {
  const ProductPageThreeDot({
    super.key,
    required this.widget,
    required this.currentSlid,
  });

  final ProductPage widget;
  final int currentSlid;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: Image.asset(
            widget.cartItems.image,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 8,
              width: currentSlid == index ? 20 : 8,
              margin: const EdgeInsets.only(right: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: currentSlid == index
                    ? Colors.blue
                    : Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
