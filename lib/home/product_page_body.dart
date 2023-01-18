import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductPageBody extends StatefulWidget {
  const ProductPageBody({super.key});

  @override
  State<ProductPageBody> createState() => _ProductPageBodyState();
}

class _ProductPageBodyState extends State<ProductPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildPageItem(index);
        },
      ),
    );
  }
}

Widget _buildPageItem(int index) {
  return Stack(
    children: [
      Container(
        height: 220,
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.yellow,
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/air_filters.jpg'))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 140,
          margin: EdgeInsets.only(left: 40, right: 40, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}
