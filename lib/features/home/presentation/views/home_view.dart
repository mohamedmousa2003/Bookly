import 'package:book_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AssetsData.logo),
              IconButton(
                  onPressed: () {}, icon: Image.asset(AssetsData.search)),
            ],
          ),
          Container(
              height: 230,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [],
              ))
        ],
      ),
    );
  }
}
