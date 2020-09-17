import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, -7),
          blurRadius: 50,
          color: kPrimaryColor.withOpacity(0.38),
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/flower.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/heart-icon.svg',
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/user-icon.svg',
              )),
        ],
      ),
    );
  }
}
