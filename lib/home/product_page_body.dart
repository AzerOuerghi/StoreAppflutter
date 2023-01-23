import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce/Color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../dimentions.dart';
import '../widget/big_text.dart';
import '../widget/small_text.dart';
import 'SecondSection.dart';

class ProductPageBody extends StatefulWidget {
  const ProductPageBody({super.key});

  @override
  State<ProductPageBody> createState() => _ProductPageBodyState();
}

class _ProductPageBodyState extends State<ProductPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimentions.pageView,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, index) {
              return _buildPageItem(index);
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: 0,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        secondSection(),
      ],
    );
  }
}

Widget _buildPageItem(int index) {
  return Stack(
    children: [
      Container(
        height: Dimentions.pageViewContainer,
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 57, 56, 48),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage('images/exhaust-.jpg'))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: Dimentions.pageViewTextContainer,
          margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color(0xFFe8e8e8),
                    offset: Offset(0, 5),
                    blurRadius: 5)
              ]),
          child: Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              BigText(
                text: 'this a test',
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Wrap(
                    children: List.generate(
                        5,
                        (index) => Icon(
                              Icons.star,
                              color: AppColor.mainColor,
                            )),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    ],
  );
}
