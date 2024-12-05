import 'package:flutter/material.dart';

import '../../core/constants/color.dart';
import '../../core/route/rout_names.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        appBar: AppBar(
          backgroundColor: CustomColor.mainColor,
          leading: Image.asset("assets/images/circle.png"),
          title: Center(
            child: SizedBox(
              width: 104,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.greyColor,
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          "Men ",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: CustomColor.buttonColor,
                minimumSize: const Size(40, 40),
              ),
              onPressed: () {},
              child: Image.asset(
                "assets/images/shop.png",
                height: 40,
                width: 40,
              ),
            ),
          ],
        ),
        //! Body
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: CustomColor.greyColor,
                    borderRadius: BorderRadius.circular(
                      45,
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.transparent,
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 20.0,
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        RouteNames.shopCategories,
                      );
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    circleAvatar(
                      "assets/images/shop.png",
                      "Hoodies",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    circleAvatar(
                      "assets/images/shop.png",
                      "Hoodies",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    circleAvatar(
                      "assets/images/shop.png",
                      "Hoodies",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    circleAvatar(
                      "assets/images/shop.png",
                      "Hoodies",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    circleAvatar(
                      "assets/images/shop.png",
                      "Hoodies",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Top Selling",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    clipRRect(
                      "assets/images/boy.png",
                      "Men's Harrington Jacket",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    clipRRect(
                      "assets/images/boy.png",
                      "Men's Harrington Jacket",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    clipRRect(
                      "assets/images/boy.png",
                      "Men's Harrington Jacket",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "New in",
                    style: TextStyle(
                        color: CustomColor.buttonColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    clipRRect(
                      "assets/images/boy.png",
                      "Men's Harrington Jacket",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    clipRRect(
                      "assets/images/boy.png",
                      "Men's Harrington Jacket",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    clipRRect(
                      "assets/images/boy.png",
                      "Men's Harrington Jacket",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//! Widgets
Widget circleAvatar(String imgURL, String text) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: CustomColor.buttonColor,
        backgroundImage: AssetImage(
          imgURL,
        ),
        radius: 40,
      ),
      Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  );
}

Widget clipRRect(String imgUrl, String info) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        child: Image.asset(
          imgUrl,
          width: 200,
          fit: BoxFit.cover,
        ),
      ),
      Container(
        width: 200,
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              8,
            ),
            bottomRight: Radius.circular(
              8,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                info,
                style: const TextStyle(color: Colors.white),
              ),
              const Text(
                "\$1745",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
