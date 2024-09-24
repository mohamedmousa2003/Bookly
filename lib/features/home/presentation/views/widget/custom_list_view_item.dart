import 'package:book_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return SizedBox(
      height: mediaQuery.height * 0.25,
      child: AspectRatio(
        aspectRatio: 2.7 / 4, //  width / height
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.test),
                  fit: BoxFit.fill,
                )),
            child: const Stack(
              children: [],
            )),
      ),
    );
  }
}
