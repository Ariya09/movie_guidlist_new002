import 'package:flutter/material.dart';
import 'package:movie_guidlist_new/widgets/all_widgets.dart';

class RegisterMemberPage extends StatefulWidget {
  const RegisterMemberPage({super.key});

  @override
  State<RegisterMemberPage> createState() => _RegisterMemberPageState();
}

class _RegisterMemberPageState extends State<RegisterMemberPage> {
  TextEditingController firstName_controller = TextEditingController();
  TextEditingController lastName_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  bool passwordText = false;
  bool emailText = false;
  bool firstName = false;
  bool lastName = false;

  bool _isobscureText = true;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "สมัครสมาชิก",
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
                        height: 30,
                      ),
                      textFieldCustomPassword('ชื่อ', firstName_controller),
                      textFieldCustomPassword('นามสกุล', lastName_controller),
                      textFieldCustomPassword('อีเมล', email_controller),
                      textFieldCustomPassword('รหัสผ่าน', password_controller),

                      // Expanded(
                      //     child:

                      SizedBox(
                        height: 20,
                      ),

                      //  ),
                      ButtonStyeCustom('สมัครสมาชิก', 'loginEmail'),
                      Spacer(
                        flex: 1,
                      )
                    ]),
              ),
            )));
  }

  textFieldCustomPassword(String label, controller) {
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
                    : (label == 'ชื่อ')
                        ? firstName
                        : (label == 'นามสกุล')
                            ? lastName
                            : false,
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
              _onRegister();
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

  _onRegister() {
    setState(() {
      passwordText = password_controller.text.isEmpty;
      emailText = email_controller.text.isEmpty;
      firstName = firstName_controller.text.isEmpty;

      lastName = lastName_controller.text.isEmpty;
    });
  }
}
