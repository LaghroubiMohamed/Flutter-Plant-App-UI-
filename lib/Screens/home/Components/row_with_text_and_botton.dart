import 'package:flutter/material.dart';
import 'package:plant_app/Screens/home/Components/tile_with_custom_under_line.dart';
import '../../../constants.dart';

class RowWithTextAndMoreBotton extends StatelessWidget {
  const RowWithTextAndMoreBotton({
    Key key,
    this.title,
    this.onMoreTapped,
  }) : super(key: key);

  final String title;
  final Function onMoreTapped;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TileWithCustomUnderLine(text: title),
          Spacer(),
          TextButton(
            onPressed: onMoreTapped,
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              primary: kPrimaryColor,
            ),
            child: Text(
              'More',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
