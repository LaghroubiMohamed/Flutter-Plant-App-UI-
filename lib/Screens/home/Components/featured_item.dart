import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({
    Key key,
    @required this.size,
    this.image,
    this.onTap,
  }) : super(key: key);

  final String image;
  final Function onTap;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding / 2,
          right: kDefaultPadding / 2,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding,
        ),
        height: 185,
        width: size.width * 0.8,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
