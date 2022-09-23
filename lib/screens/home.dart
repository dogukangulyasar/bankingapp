import 'package:bankingapp/constants/colors.dart';
import 'package:bankingapp/widgets/avatar.dart';
import 'package:bankingapp/widgets/bankcard.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banking App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Rubik'),
      home: Scaffold(
        body: SafeArea(
          child: Flexible(
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 24, 0),
                          child: Row(
                            children: [
                              Column(
                                children: const [
                                  Avatar(path: "assets/images/me.jpg"),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Good Morning",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "DOĞUKAN",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        // Top Yello Circle
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: HexColor(yellow),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // Card with blue circle
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 100,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(100),
                                bottomRight: Radius.circular(100)),
                            color: HexColor(circleLightBlue).withOpacity(.5),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: const BankCard(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: const [
                      Text(
                        "LAST TRANSACTIONS",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
