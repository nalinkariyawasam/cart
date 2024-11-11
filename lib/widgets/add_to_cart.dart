import 'package:cart/model/cart_grid.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.cartItems,
  });

  final CartItems cartItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${cartItems.price.toString()}0",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue.shade600,
              ),
              child: const Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
