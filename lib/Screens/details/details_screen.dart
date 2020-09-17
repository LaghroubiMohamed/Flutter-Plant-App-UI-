import 'package:flutter/material.dart';
import 'package:plant_app/Screens/details/Components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {Key key, this.image, this.country, this.plantName, this.price, this.id})
      : super(key: key);
  final String image;
  final String country;
  final String plantName;
  final int price;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        id: id,
        image: image,
        country: country,
        plantName: plantName,
        price: price,
      ),
    );
  }
}
