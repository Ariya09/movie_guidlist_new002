import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordEdit extends StatefulWidget {
  const PasswordEdit({super.key});

  @override
  State<PasswordEdit> createState() => _PasswordEditState();
}

class _PasswordEditState extends State<PasswordEdit> {
  TextEditingController newPass_controller = TextEditingController();
  TextEditingController confirmPass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 25, 30, 33),
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "รหัสผ่าน",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.blueGrey[900],
            ),
            body: Container(
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: screenSize.height * 0.08,
                      ),
                      // Text(
                      //   "เปลี่ยนรหัสผ่าน",
                      //   style: TextStyle(
                      //       fontSize: 20,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white),
                      // ),

                      SizedBox(
                        height: 30,
                      ),
                      textFieldShowData('รห้สผ่านใหม่', newPass_controller),
                      textFieldShowData(
                          'ยืนยันรหัสผ่าน', confirmPass_controller),

                      // Expanded(
                      //     child:

                      SizedBox(
                        height: screenSize.height * 0.05,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                  onPressed: () {},
                                  child: Text(
                                    'ตกลง',
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ),
                            Spacer(),
                            Container(
                                height: screenSize.height * 0.06,
                                width: screenSize.width * 0.35,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red[400],
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 15),
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)))),
                                    onPressed: () {},
                                    child: Text(
                                      'ยกเลิก',
                                      style: TextStyle(color: Colors.black),
                                    )))
                          ],
                        ),
                      ),

                      //  ),
                      Spacer(
                        flex: 1,
                      )
                    ]),
              ),
            )));
  }

  textFieldShowData(String label, TextEditingController _controller) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$label",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: _controller,
                  style: TextStyle(
                    color: Colors.black, // Change the text color here
                  ),
                  decoration: InputDecoration(
                    prefix: Text("  "),
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    filled: true, // Fill the background
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // labelText: label,
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
