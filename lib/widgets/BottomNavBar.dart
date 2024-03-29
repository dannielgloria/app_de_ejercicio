import 'package:app_de_ejercicio/styles/colorStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Calendario",
            svgScr: "assets/icons/calendar.svg",
          ),
          BottomNavItem(
            title: "Ejercicio",
            svgScr: "assets/icons/exercice.svg",
            isActive: true,
          ),
          BottomNavItem(
            title: "Configuración",
            svgScr: "assets/icons/settings.svg",
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.svgScr,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr,
            color: isActive ? dIconColor : dTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? dIconColor : dTextColor),
          ),
        ],
      ),
    );
  }
}
