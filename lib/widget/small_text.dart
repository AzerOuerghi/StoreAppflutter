import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  double height;

  SmallText(
      {super.key,
      required this.text,
      this.color = const Color(0xFFccc75c),
      this.size = 12,
      this.height = 1.2});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
