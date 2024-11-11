import 'package:flutter/material.dart';

class QuantityAddToCart extends StatelessWidget {
  final Function() add;
  final Function() remove;
  final int currentNumber;
  const QuantityAddToCart({
    super.key,
    required this.add,
    required this.remove,
    required this.currentNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: remove,
          icon: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                )),
            child: const Icon(
              Icons.remove,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          currentNumber.toString(),
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        IconButton(
          onPressed: add,
          icon: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: const Icon(
              Icons.add,
            ),
          ),
        ),
      ],
    );
  }
}
