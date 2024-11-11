import 'package:flutter/material.dart';

class ProductPageAppBar extends StatelessWidget {
  const ProductPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade400,
            ),
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
        ],
      ),
    );
  }
}
