import 'package:flutter/material.dart';
import 'package:plant_app/Behaviour.dart';
import 'package:plant_app/Models/recomanded_model.dart';
import 'package:plant_app/Screens/details/details_screen.dart';
import 'package:plant_app/Screens/home/Components/recomanded_list_items.dart';
import 'package:plant_app/Screens/home/Components/row_with_text_and_botton.dart';
import 'featured_item.dart';
import 'header_with_seach_box.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWithSearchBox(size: size),
          RowWithTextAndMoreBotton(
            title: "Recomanded",
            onMoreTapped: () {},
          ),
          Container(
            height: 275,
            child: ScrollConfiguration(
              behavior: NoGlow(),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recomandedd.length,
                itemBuilder: (context, index) {
                  return RecomandedListItems(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          image: recomandedd[index].image,
                          country: recomandedd[index].country,
                          plantName: recomandedd[index].plantName,
                          price: recomandedd[index].price,
                        ),
                      ));
                    },
                    size: size,
                    image: recomandedd[index].image,
                    planName: recomandedd[index].plantName,
                    country: recomandedd[index].country,
                    price: recomandedd[index].price,
                  );
                },
              ),
            ),
          ),
          RowWithTextAndMoreBotton(
            title: "Featured",
            onMoreTapped: () {},
          ),
          ScrollConfiguration(
            behavior: NoGlow(),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FeaturedItems(
                    size: size,
                    image: 'assets/images/bottom_img_1.png',
                    onTap: () {},
                  ),
                  FeaturedItems(
                    size: size,
                    image: 'assets/images/bottom_img_2.png',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
