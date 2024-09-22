import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../widgets/all_widgets.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: screenSize.width * 0.7,
                  height: screenSize.height * 0.3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        // Border width
                        ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.fill,
                    ),
                  )),
              SizedBox(
                height: 50,
              ),
              ButtonStyeCustom('ล็อคอิน', 'LoginPage'),
              ButtonStyeCustom('ล็อคอิน Facebook', 'LoginPageFB'),
              SizedBox(
                height: 150,
              ),
              GestureDetector(
                onTap: () {
                  Modular.to.pushNamed("/RegisterMemberPage");
                },
                child: Text(
                  "สมัครสมาชิก",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 130),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  log("message");
                  Modular.to.pushNamed("/MainPage");
                },
                child: Text(
                  "เข้าใช้งานแบบไม่เป็นสมาชิก",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
