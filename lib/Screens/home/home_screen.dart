import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/Screens/home/Components/home_body.dart';
import 'Components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeBody(),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'), onPressed: () {}),
    );
  }
}
