import 'package:flutter/material.dart';
import '../../dashboard/dashboard_screen.dart';
import 'auth.dart';
import 'login_register_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return DashboardScreen();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
