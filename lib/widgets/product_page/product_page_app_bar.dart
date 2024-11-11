
import 'package:flutter/material.dart';

class ProductPageAppBar extends StatelessWidget {
  const ProductPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
