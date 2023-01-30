import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../models/product_item.dart';
import '../../styles/colors.dart';
import '../../widgets/item_card_widget.dart';
import '../../widgets/search_bar_widget.dart';
import '../login/registre/auth.dart';
import '../product_details/product_details_screen.dart';
import 'product_featured_Item_widget.dart';
import 'home_banner_widget.dart';

class HomeScreen2 extends StatelessWidget {
  HomeScreen2({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  final CollectionReference _Products =
      FirebaseFirestore.instance.collection('Products');

  Widget _userUid() {
    return Text(
      user?.email ?? 'User email',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: _Products.snapshots(),
        builder:
            (BuildContext context, AsyncSnapshot<QuerySnapshot> sreamSnapshot) {
          if (sreamSnapshot.hasData) {
            return ListView.builder(
              itemCount: sreamSnapshot.data!.docs.length,
              itemBuilder: (BuildContext context, int index) {
                final DocumentSnapshot documentSnapshot =
                    sreamSnapshot.data!.docs[index];
                return Card(
                  child: ListTile(
                    title: Text(documentSnapshot['name']),
                    subtitle: Text(documentSnapshot['description']),
                  ),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget padded(Widget widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: widget,
    );
  }

  Widget getHorizontalItemSlider(List<GroceryItem> items) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 250,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onItemClicked(context, items[index]);
            },
            child: GroceryItemCardWidget(
              item: items[index],
              heroSuffix: "home_screen",
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 20,
          );
        },
      ),
    );
  }

  void onItemClicked(BuildContext context, GroceryItem groceryItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ProductDetailsScreen(
                groceryItem,
                heroSuffix: "home_screen",
              )),
    );
  }

  Widget subTitle(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text(
          "See All",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor),
        ),
      ],
    );
  }

  Widget locationWidget() {
    String locationIconPath = "assets/icons/location_icon.svg";
    return Column(
      children: [
        _userUid(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              locationIconPath,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Manouba,Tunisia",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
