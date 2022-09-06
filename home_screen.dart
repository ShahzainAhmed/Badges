import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Badges"),
        actions: [
          Center(
            child: Badge(
              badgeColor: Colors.amber,
              badgeContent: const Text("2"),
              animationType: BadgeAnimationType.fade,
              animationDuration: const Duration(milliseconds: 800),
              child: const Icon(
                Icons.shopping_bag_outlined,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Badge(
              badgeContent: const Text("1"),
              animationType: BadgeAnimationType.fade,
              animationDuration: const Duration(milliseconds: 800),
              child: const Icon(Icons.shopping_cart_outlined, size: 60),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Badge(
            badgeContent: const Text(
              " Shahzain's Badge ",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            shape: BadgeShape.square,
            borderRadius: BorderRadius.circular(12),
            badgeColor: Colors.blue,
            animationDuration: const Duration(seconds: 5),
          ),
        ],
      ),
    );
  }
}
