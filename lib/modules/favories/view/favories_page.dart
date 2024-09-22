import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/widgets/all_widgets.dart';

import 'widget/favories_card.dart';

class FavoriesPage extends StatefulWidget {
  const FavoriesPage({super.key});

  @override
  State<FavoriesPage> createState() => _FavoriesPageState();
}

class _FavoriesPageState extends State<FavoriesPage> {
  bool hasAcount = true;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 25, 30, 33),
            appBar: AppBar(
              centerTitle: true,
              title: textAllTitle("รายการโปรด"),
              backgroundColor: Colors.blueGrey[900],
            ),
            body: hasAcount
                ? FavoriesCard()
                : Container(
                    child: Column(
                    children: [
                      Text(
                        "ไปสมัคร Account ซะ ไอ้ฟายยยยย",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Container(
                        height: screenSize.height * 0.06,
                        width: screenSize.width * 0.35,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue[400],
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                            onPressed: () {
                              Modular.to.pushNamed("/");
                            },
                            child: Text(
                              'ตกลง',
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                    ],
                  ))));
  }
}
