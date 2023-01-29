import 'package:flutter/material.dart';

import '../../common_widgets/app_text.dart';
import '../../styles/colors.dart';


class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 115,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(
                "assets/images/banner_background.png",
              ),
              fit: BoxFit.cover)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Image.asset(
              "assets/images/banner_image.PNG",
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                text: "LIVRAISON GRATUITE",
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: "ET  Up To 40%  OFF",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
