import 'package:flutter/material.dart';

import '../../../constants.dart';

class TileWithCustomUnderLine extends StatelessWidget {
  const TileWithCustomUnderLine({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            right: 0.0,
            left: 0.0,
            bottom: 2,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              decoration: BoxDecoration(color: kPrimaryColor.withOpacity(0.2)),
            ),
          )
        ],
      ),
    );
  }
}
