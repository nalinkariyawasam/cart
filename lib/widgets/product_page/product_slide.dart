import 'package:cart/screen/product_page.dart';
import 'package:flutter/material.dart';

class ProductSlide extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const ProductSlide({
    super.key,
    required this.widget,
    required this.onChange,
    required this.currentSlide,
  });

  final ProductPage widget;


  get currentScreen => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
         width: double.infinity,
          child: PageView.builder(
            itemCount: 3,
            onPageChanged: onChange,
            itemBuilder: (context, index) {
              return Image.asset(
                widget.cartItems.image,
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 8,
              width: currentSlide == index ? 20 : 8,
              margin: const EdgeInsets.only(right: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: currentSlide == index ? Colors.blue : Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
