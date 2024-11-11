
import 'package:flutter/material.dart';

class SlidSection extends StatelessWidget {
  const SlidSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Winter Sale",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                const Text(
                  "Sale Up\nTo 70% Off",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade500,
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 170,
              width: 170,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/chair1.png",
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
