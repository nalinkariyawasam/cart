import 'package:cart/model/popular.dart';
import 'package:flutter/material.dart';

class PopularItems extends StatelessWidget {
  const PopularItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 80,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(255, 218, 215, 215),
                  image: DecorationImage(
                    image: AssetImage(
                      catogeryPopilar[index].image,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                catogeryPopilar[index].name,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        itemCount: catogeryPopilar.length,
      ),
    );
  }
}
