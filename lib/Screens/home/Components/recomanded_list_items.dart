import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecomandedListItems extends StatelessWidget {
  const RecomandedListItems({
    Key key,
    @required this.size,
    this.planName,
    this.country,
    this.price,
    this.image,
  }) : super(key: key);
  final Size size;

  final String planName;
  final String image;
  final String country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding / 2,
          right: kDefaultPadding / 2,
          top: kDefaultPadding / 2),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(
            image,
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 15,
            ),
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  color: kPrimaryColor.withOpacity(0.23),
                  blurRadius: 50,
                ),
              ],
            ),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: '$planName\n',
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                      text: country,
                      style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                    ),
                  ]),
                ),
                Spacer(),
                Text(
                  '\$$price',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
