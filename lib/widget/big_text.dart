import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  TextOverflow overflow;

  BigText(
      {super.key,
      required this.text,
      this.color = const Color(0xFF332d2b),
      this.size = 20,
      this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style:
          TextStyle(color: color, fontWeight: FontWeight.w400, fontSize: size),
    );
  }
}
