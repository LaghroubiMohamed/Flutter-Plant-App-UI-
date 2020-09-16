import 'package:flutter/material.dart';
import 'package:plant_app/Models/recomanded_model.dart';
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
          Container(
            height: 275,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recomandedd.length,
              itemBuilder: (context, index) {
                return RecomandedListItems(
                  size: size,
                  image: recomandedd[index].image,
                  planName: recomandedd[index].plantName,
                  country: recomandedd[index].country,
                  price: recomandedd[index].price,
                );
              },
            ),
          ),
          RowWithTextAndMoreBotton(
            title: "Featured",
            onMoreTapped: () {},
          ),
          //Todo! add the deatured listView images

          // Todo! creat the bottom navigation bar
        ],
      ),
    );
  }
}
