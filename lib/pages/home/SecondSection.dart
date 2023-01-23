import 'package:ecommerce/Color.dart';
import 'package:ecommerce/widget/big_text.dart';
import 'package:ecommerce/widget/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class secondSection extends StatefulWidget {
  const secondSection({super.key});

  @override
  State<secondSection> createState() => _secondSectionState();
}

class _secondSectionState extends State<secondSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(children: [BigText(text: 'Biiiiig'), SmallText(text: 'Smaaaal')]),
          const SizedBox(height: 20),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.blue),
                margin: EdgeInsets.all(5),
                child: Row(children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/exhaust-.jpg'),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: 'test'),
                      SmallText(text: 'text'),
                    ],
                  )
                ]),
              );
            },
          ),
        ],
      ), 
    );
  }
}
