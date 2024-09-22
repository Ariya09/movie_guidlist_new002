import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FavoriesCard extends StatefulWidget {
  const FavoriesCard({super.key});

  @override
  State<FavoriesCard> createState() => _FavoriesCardState();
}

class _FavoriesCardState extends State<FavoriesCard> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Center(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // log("dddd=> $index");
                Modular.to.pushNamed("MovieDetail");
              },
              child: Container(
                height: screenSize.height * 0.3,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                                color: Color.fromARGB(255, 43, 55, 62),
                                width: screenSize.width * 0.52,
                                height: screenSize.height * 0.2,
                                // padding: EdgeInsets.symmetric(vertical: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "movie sadadaasdasdasdsadsadsd$index",
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
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
                                    // Row(
                                    //   children: [
                                    //     Padding(
                                    //       padding: EdgeInsets.all(5),
                                    //       child: Expanded(
                                    //           child: Container(
                                    //               width: screenSize.width * 0.1,
                                    //               height:
                                    //                   screenSize.height * 0.05,
                                    //               decoration: BoxDecoration(
                                    //                   color: Colors.white,
                                    //                   borderRadius:
                                    //                       BorderRadius.circular(
                                    //                           10)),
                                    //               child: Column(
                                    //                 children: [
                                    //                   Image.asset(
                                    //                     'assets/logo.png',
                                    //                     fit: BoxFit.fill,
                                    //                   ),
                                    //                   Text("score")
                                    //                 ],
                                    //               ))),
                                    //     ),
                                    //     Padding(
                                    //       padding: EdgeInsets.all(5),
                                    //       child: Expanded(
                                    //           child: Container(
                                    //               width: screenSize.width * 0.1,
                                    //               height:
                                    //                   screenSize.height * 0.05,
                                    //               decoration: BoxDecoration(
                                    //                   color: Colors.white,
                                    //                   borderRadius:
                                    //                       BorderRadius.circular(
                                    //                           10)),
                                    //               child: Column(
                                    //                 children: [
                                    //                   Image.asset(
                                    //                     'assets/logo.png',
                                    //                     fit: BoxFit.fill,
                                    //                   ),
                                    //                   Text("score")
                                    //                 ],
                                    //               ))),
                                    //     ),
                                    //     Padding(
                                    //       padding: EdgeInsets.all(5),
                                    //       child: Expanded(
                                    //           child: Container(
                                    //               width: screenSize.width * 0.1,
                                    //               height:
                                    //                   screenSize.height * 0.05,
                                    //               decoration: BoxDecoration(
                                    //                   color: Colors.white,
                                    //                   borderRadius:
                                    //                       BorderRadius.circular(
                                    //                           10)),
                                    //               child: Column(
                                    //                 children: [
                                    //                   Image.asset(
                                    //                     'assets/logo.png',
                                    //                     fit: BoxFit.fill,
                                    //                   ),
                                    //                   Text("score")
                                    //                 ],
                                    //               ))),
                                    //     ),
                                    //   ],
                                    // )
                                  ],
                                ))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                log("xxxxx");
                                Modular.to.pushNamed("/MovieDetail");
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
              ),
            );
          },
        ),
      ),
    );
  }
}
