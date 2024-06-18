import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/widgets/all_widgets.dart';

class FavoriesPage extends StatefulWidget {
  const FavoriesPage({super.key});

  @override
  State<FavoriesPage> createState() => _FavoriesPageState();
}

class _FavoriesPageState extends State<FavoriesPage> {
  bool hasAcount = false;

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
                ? Container(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Center(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: screenSize.height * 0.3,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            //  color: Colors.white,
                            child: Card(
                              color: Color.fromARGB(255, 43, 55, 62),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Expanded(
                                        child: Container(
                                      height: screenSize.height * 0.23,
                                      width: screenSize.width * 0.3,
                                      // decoration: BoxDecoration(
                                      //     color: Colors.red,
                                      //     borderRadius: BorderRadius.circular(10)),
                                      child: Card(
                                        child: Image.asset(
                                          'assets/logo.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Expanded(
                                        flex: 2,
                                        child: Container(
                                            color:
                                                Color.fromARGB(255, 43, 55, 62),
                                            width: screenSize.width * 0.52,
                                            height: screenSize.height * 0.2,
                                            // padding: EdgeInsets.symmetric(vertical: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "movie sadadaasdasdasdsadsadsd$index",
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "rate PG-13 2019, Action/Adventure",
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  "Time : 24sad",
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      child: Expanded(
                                                          child: Container(
                                                              width: screenSize
                                                                      .width *
                                                                  0.1,
                                                              height: screenSize
                                                                      .height *
                                                                  0.05,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Column(
                                                                children: [
                                                                  Image.asset(
                                                                    'assets/logo.png',
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                  Text("score")
                                                                ],
                                                              ))),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      child: Expanded(
                                                          child: Container(
                                                              width: screenSize
                                                                      .width *
                                                                  0.1,
                                                              height: screenSize
                                                                      .height *
                                                                  0.05,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Column(
                                                                children: [
                                                                  Image.asset(
                                                                    'assets/logo.png',
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                  Text("score")
                                                                ],
                                                              ))),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      child: Expanded(
                                                          child: Container(
                                                              width: screenSize
                                                                      .width *
                                                                  0.1,
                                                              height: screenSize
                                                                      .height *
                                                                  0.05,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10)),
                                                              child: Column(
                                                                children: [
                                                                  Image.asset(
                                                                    'assets/logo.png',
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                  Text("score")
                                                                ],
                                                              ))),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ))),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            log("xxxxx");
                                            Modular.to
                                                .pushNamed("/MovieDetail");
                                          },
                                          child: SizedBox(
                                              height: 70,
                                              child: Container(
                                                color: Colors.blueAccent,
                                                child: Icon(
                                                  Icons.beenhere,
                                                  color: Colors.grey,
                                                  size: 43,
                                                ),
                                              ))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
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
