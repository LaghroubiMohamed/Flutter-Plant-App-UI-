import 'package:flutter/material.dart';
import 'package:plant_app/Screens/details/Components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {Key key, this.image, this.country, this.plantName, this.price})
      : super(key: key);
  final String image;
  final String country;
  final String plantName;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        image: image,
        country: country,
        plantName: plantName,
        price: price,
      ),
    );
  }
}
