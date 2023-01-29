import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common_widgets/app_button.dart';
import '../../../common_widgets/app_text.dart';
import '../../../styles/colors.dart';
import '../../dashboard/dashboard_screen.dart';
import 'auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget icon() {
    String iconPath = "assets/icons/app_icon.svg";
    return SvgPicture.asset(
      iconPath,
      width: 48,
      height: 56,
    );
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _entryField(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(25.0),
        ),
        labelText: title,
      ),
    );
  }

  Widget _errorMessage() {
    return Text(
      errorMessage == '' ? '' : 'Humm ? $errorMessage',
      style: TextStyle(color: Colors.white),
    );
  }

  Widget _submitButton() {
    return AppButton(
      onPressed:
          isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      label: (isLogin ? 'Login' : 'Register'),
      fontWeight: FontWeight.w600,
      padding: EdgeInsets.symmetric(vertical: 25),
    );
  }

  Widget _loginOrRegisterButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: TextButton(
        onPressed: () {
          setState(() {
            isLogin = !isLogin;
          });
        },
        child: Text(isLogin ? 'Register instead' : 'Login instead'),
      ),
    );
  }

  Widget getButton(BuildContext context) {
    return AppButton(
      label: "Get Started",
      fontWeight: FontWeight.w600,
      padding: EdgeInsets.symmetric(vertical: 25),
      onPressed: () {
        onGetStartedClicked(context);
      },
    );
  }

  final String imagePath = "assets/images/welcome_image.jpg";

  Widget welcomeTextWidget() {
    return Column(
      children: [
        AppText(
          text: "Welcome",
          fontSize: 48,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        AppText(
          text: "to our store",
          fontSize: 48,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Spacer(),
              icon(),
              SizedBox(
                height: 20,
              ),
              welcomeTextWidget(),
              SizedBox(
                height: 10,
              ),
              sloganText(),
              SizedBox(
                height: 40,
              ),
              _entryField('email', _controllerEmail),
              _entryField('password', _controllerPassword),
              _errorMessage(),
              _submitButton(),
              _loginOrRegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget sloganText() {
  return AppText(
    text: "Qualite compétence et bon prix",
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xffFCFCFC).withOpacity(0.7),
  );
}

void onGetStartedClicked(BuildContext context) {
  Navigator.of(context).pushReplacement(new MaterialPageRoute(
    builder: (BuildContext context) {
      return DashboardScreen();
    },
  ));
}
