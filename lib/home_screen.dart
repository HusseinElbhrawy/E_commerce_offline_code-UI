import 'package:e_commerce_offline_code/const.dart';
import 'package:flutter/material.dart';

import 'components.dart';
import 'models/poduct.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List categories = ['Hand Bag', 'Jewellery', 'Footwear', 'Dresses'];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: const Text(
              'Women',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Category(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                ),
                itemBuilder: (context, index) => ItemCard(index: index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
