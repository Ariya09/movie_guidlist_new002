import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/widgets/all_widgets.dart';

class ProfileAccount extends StatefulWidget {
  const ProfileAccount({super.key});

  @override
  State<ProfileAccount> createState() => _ProfileAccountState();
}

class _ProfileAccountState extends State<ProfileAccount> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    bool hasAcount = true;

    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 25, 30, 33),
            appBar: AppBar(
              centerTitle: true,
              title: textAllTitle("ตั้งค่าบัญชี"),
              backgroundColor: Colors.blueGrey[900],
            ),
            body: hasAcount
                ? Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Modular.to.pushNamed('/ProfileDetail');
                            },
                            child: Container(
                              height: screenSize.height * 0.25,
                              width: screenSize.width * 1,
                              child: Card(
                                color: Color.fromARGB(255, 25, 75, 80),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Expanded(
                                        flex: 1,
                                        child: Container(
                                            width: screenSize.width * 0.4,
                                            height: screenSize.height * 0.2,
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
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 30),
                                      child: Expanded(
                                          flex: 3,
                                          child: Container(
                                              width: screenSize.width * 0.45,
                                              height: screenSize.height * 0.2,
                                              // padding: EdgeInsets.symmetric(vertical: 5),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "ID : xxxxxxxx",
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      "ชื่อ :  Peter",
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      "นามสกุล :  Parker",
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ]))),
                                    )
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 48, 85, 83),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                  onPressed: () {
                                    Modular.to.pushNamed('/ProfileEdit');
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.settings, size: 30),
                                      Padding(padding: EdgeInsets.all(5.0)),
                                      Text(
                                        'การตั้งค่าและความเป็นส่วนตัว',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 48, 85, 83),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                  onPressed: () {
                                    Modular.to.pushNamed('/PasswordEdit');
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.shield_rounded, size: 30),
                                      Padding(padding: EdgeInsets.all(5.0)),
                                      Text(
                                        'รหัสผ่าน',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 48, 85, 83),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15),
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                  onPressed: () {
                                    Modular.to.pushNamed('/');
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.logout, size: 30),
                                      Padding(padding: EdgeInsets.all(5.0)),
                                      Text('ออกจากระบบ',
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                    ],
                                  )),
                            ],
                          ),
                        )
                      ],
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
