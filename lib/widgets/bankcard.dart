import 'package:bankingapp/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BankCard extends StatelessWidget {
  const BankCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Card Top
        Row(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(24, 0, 0, 0),
              width: 327,
              height: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.indigo,
                      spreadRadius: .5,
                      blurRadius: .5,
                      offset: Offset(1, 0)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                        child: Text(
                          "Current Balance",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "\$12567.89",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        // Card Bottom
        Row(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(24, 0, 0, 0),
              width: 327,
              height: 97,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [
                    HexColor(gradientBlue).withOpacity(.9),
                    HexColor(gradientLightPink).withOpacity(.8),
                    HexColor(gradientLightOrange).withOpacity(0.5),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.indigo,
                      spreadRadius: .5,
                      blurRadius: .5,
                      offset: Offset(1, 0)),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "3452 1235 7894 1678",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "05/2025",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
