import 'package:cart/screen/home_screen.dart';
import 'package:flutter/material.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int currentTab = 2;
  List screens = [
    const Scaffold(),
    const Scaffold(),
    const HomeScreen(),
    const Scaffold(),
    const Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          child: BottomAppBar(
            height: 70,
            color: Color.fromARGB(255, 246, 244, 244),
            elevation: 0,
            //shape: const CircularNotchedRectangle(),
            //notchMargin: 5,
            //clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentTab = 0;
                    });
                  },
                  style: IconButton.styleFrom(),
                  icon: Icon(
                    Icons.menu,
                    color: currentTab == 0 ? Colors.blue : Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentTab = 1;
                    });
                  },
                  style: IconButton.styleFrom(),
                  icon: Icon(
                    Icons.chat_rounded,
                    color: currentTab == 1 ? Colors.blue : Colors.black,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        currentTab = 2;
                      });
                    },
                    style: IconButton.styleFrom(),
                    icon: Icon(
                      Icons.home,
                      color: currentTab == 2 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentTab = 3;
                    });
                  },
                  style: IconButton.styleFrom(),
                  icon: Icon(
                    Icons.settings,
                    color: currentTab == 3 ? Colors.blue : Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentTab = 4;
                    });
                  },
                  style: IconButton.styleFrom(),
                  icon: Icon(
                    Icons.person,
                    color: currentTab == 4 ? Colors.blue : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: screens[currentTab],
    );
  }
}
