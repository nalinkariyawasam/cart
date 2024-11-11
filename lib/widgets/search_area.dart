import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class SearchArea extends StatelessWidget {
  const SearchArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 45,
          width: 290,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 235, 234, 234),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 235, 234, 234),
            borderRadius: BorderRadius.circular(15),
          ),
          child: badges.Badge(
            position: badges.BadgePosition.topEnd(top: -2, end: 2),
            child: const Center(
              child: Icon(
                Icons.notifications,
              ),
            ),
            badgeContent: const Text(
              "3",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
