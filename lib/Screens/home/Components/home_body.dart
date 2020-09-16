import 'package:flutter/material.dart';
import 'package:plant_app/Screens/home/Components/recomanded_list_items.dart';
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
            title: "Recomanded",
            onMoreTapped: () {},
          ),
          // Container(
          //   height: size.height * 0.4,
          //   color: Colors.yellow,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: recomandedd.length,
          //     itemBuilder: (context, index) {
          //       return Container();
          //     },
          //   ),
          // ),
          RecomandedListItems(
            size: size,
            image: 'assets/images/image_1.png',
            planName: 'test',
            country: 'morroco',
            price: 500,
          )
        ],
      ),
    );
  }
}
