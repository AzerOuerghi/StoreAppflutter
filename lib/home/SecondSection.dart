import 'package:ecommerce/widget/big_text.dart';
import 'package:ecommerce/widget/small_text.dart';
import 'package:flutter/cupertino.dart';
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
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                child: Row(children: [
                  Image(image: AssetImage('images/exhaust-.jpg')),
                  Text('azer')
                ]),
              );
            },
          )
        ],
      ),
    );
  }
}
