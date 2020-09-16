import 'package:flutter/material.dart';
import 'package:plant_app/Screens/home/Components/row_with_text_and_botton.dart';

import 'header_with_seach_box.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          RowWithTextAndMoreBotton(
            title: "Reccomanded",
            onMoreTapped: () {},
          ),
        ],
      ),
    );
  }
}
