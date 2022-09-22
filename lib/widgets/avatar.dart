import 'package:bankingapp/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            HexColor(gradientBlue),
            HexColor(gradientPurple),
            HexColor(gradientPink)
          ]),
          shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: CircleAvatar(
          radius: 10,
          backgroundImage: AssetImage(path),
        ),
      ),
    );
  }
}
