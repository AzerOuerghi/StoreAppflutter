import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;

  const AppIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Color(0xFFfcf4e4)),
      child: Icon(
        icon,
        color: Colors.blueGrey,
        
        size: 16,
      ),
    );
  }
}
