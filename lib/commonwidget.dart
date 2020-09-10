import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommonWidget {
  static Widget getSvgImage(String source, double height, double width) {
    return SvgPicture.asset(
      source,
      height: height,
      width: width,
    );
  }

  static Widget getTextStyle(
      String text, double Size, FontWeight fontweight, Color color) {
    return Text(
      text,
      style: TextStyle(fontSize: Size, fontWeight: fontweight,color: color)
    );
  }
}
