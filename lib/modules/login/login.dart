import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_guidlist_new/widgets/all_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();
  bool _isobscureText = true;
  bool passwordText = false;
  bool emailText = false;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "ล็อคอิน",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.cyan[900],
        ),
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
                children: <Widget>[
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                      width: screenSize.width * 0.6,
                      height: screenSize.height * 0.25,
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
                    height: 50,
                  ),
                  Text(
                    "เข้าสู่ระบบ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  textFieldCustomPassword('อีเมล', email_controller),
                  textFieldCustomPassword('รหัสผ่าน', password_controller),

                  // Expanded(
                  //     child:
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Modular.to.pushNamed("/RegisterMemberPage");
                          },
                          child: Text(
                            "สมัครสมาชิก",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Modular.to.pushNamed("/ForgetPassword");
                          },
                          child: Text(
                            "ลืมรหัสผ่าน?",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //  ),
                  ButtonStyeCustom('ล็อคอิน', 'loginEmail'),
                  Spacer(
                    flex: 2,
                  )
                ]),
          ),
        ));
  }

  ButtonStyeCustom(String label, String route) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: (label == 'ล็อคอิน' || label == 'ล็อคอิน Facebook')
                  ? EdgeInsets.symmetric(horizontal: 95, vertical: 10)
                  : null,
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 51, 221, 243), // text color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // button border radius
              ),
              elevation: 5, // button elevation
            ),
            onPressed: () {
              log("message==> dasdasdsadd $route");
              _onLogin();
            },
            child: Text(
              label,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color:
                    (label == 'ล็อคอิน Facebook') ? Colors.white : Colors.black,
              ),
            )),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  _onLogin() {
    setState(() {
      passwordText = password_controller.text.isEmpty;
      emailText = email_controller.text.isEmpty;
    });
  }

  textFieldCustomPassword(String label, controller) {
    log("passwordText = $passwordText");

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
                  controller: controller,
                  obscureText: (label == 'รหัสผ่าน') ? _isobscureText : false,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      filled: true, // Fill the background
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      // labelText: label,
                      labelStyle: TextStyle(color: Colors.grey),
                      prefixIcon: (label == 'อีเมล')
                          ? Icon(Icons.email)
                          : (label == 'รหัสผ่าน')
                              ? Icon(Icons.key)
                              : null,
                      suffixIcon: (label == 'รหัสผ่าน')
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  _isobscureText = !_isobscureText;
                                });
                              },
                              icon: Icon((_isobscureText)
                                  ? Icons.visibility_off
                                  : Icons.visibility))
                          : null),
                ),
              ],
            )),
        Visibility(
            visible: (label == 'รหัสผ่าน')
                ? passwordText
                : (label == 'อีเมล')
                    ? emailText
                    : false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "กรุณากรอกข้อมูล",
                  style: TextStyle(color: Colors.red),
                  textAlign: TextAlign.left,
                ),
              ],
            )),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
