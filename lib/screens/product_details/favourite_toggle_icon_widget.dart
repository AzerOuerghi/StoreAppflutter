import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class FavoriteToggleIcon extends StatefulWidget {
  final String name;
  final double price;
  FavoriteToggleIcon(this.name, this.price);

  @override
  _FavoriteToggleIconState createState() => _FavoriteToggleIconState();
}

class _FavoriteToggleIconState extends State<FavoriteToggleIcon> {
  final CollectionReference _products =
      FirebaseFirestore.instance.collection('Fav');

  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final String name = widget.name;
        final double? price = widget.price;
        if (price != null) {
          await _products.add({"name": name, "price": price});
          setState(() {
            favorite = !favorite;
          });
        }
        ;
      },
      child: Icon(
        favorite ? Icons.favorite : Icons.favorite_border,
        color: favorite ? Colors.red : Colors.blueGrey,
        size: 30,
      ),
    );
  }
}
