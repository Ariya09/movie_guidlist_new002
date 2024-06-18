import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({super.key});

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 25, 30, 33),
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "สมัครสมาชิก",
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
                      Container(
                          width: screenSize.width * 0.45,
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
                              fit: BoxFit.cover,
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      textFieldShowData('ID', "firstName_controller"),
                      textFieldShowData('ชื่อจริง', "lastName_controller"),
                      textFieldShowData('นามสกุล', "email_controller"),
                      textFieldShowData('อีเมล', "password_controller"),

                      // Expanded(
                      //     child:

                      SizedBox(
                        height: 20,
                      ),

                      //  ),
                      Spacer(
                        flex: 1,
                      )
                    ]),
              ),
            )));
  }

  textFieldShowData(String label, String str) {
    final TextEditingController _controller = TextEditingController(text: str);
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
                  enabled: false,
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
