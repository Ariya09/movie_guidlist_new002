import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  TextEditingController email_controller = TextEditingController();

  bool emailText = false;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "ลืมรหัสผ่าน",
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
                        flex: 1,
                      ),
                      Text(
                        "ลืมรหัสผ่าน",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      textFieldEmail('อีเมล', email_controller),

                      // Expanded(
                      //     child:

                      SizedBox(
                        height: 20,
                      ),

                      //  ),
                      ButtonStyeCustom('รับรหัส OTP', 'Pin OTP'),
                      Spacer(
                        flex: 1,
                      )
                    ]),
              ),
            )));
  }

  textFieldEmail(String label, controller) {
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
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        filled: true, // Fill the background
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        // labelText: label,
                        labelStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.email))),
              ],
            )),
        Visibility(
            visible: emailText,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "กรุณากรอกข้อมูล",
                  style: TextStyle(color: Colors.red),
                  textAlign: TextAlign.left,
                ),
              ],
            )),
        SizedBox(
          height: 5,
        )
      ],
    );
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
              _onTap();
            },
            child: Text(
              label,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.black,
              ),
            )),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  _onTap() {
    setState(() {
      emailText = email_controller.text.isEmpty;
    });
    if (email_controller.text.isNotEmpty) {
      Modular.to.pushNamed("/OtpPin");
    }
  }
}
