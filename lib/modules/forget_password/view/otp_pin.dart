import 'dart:developer';

import 'package:flutter/material.dart';
//import 'package:pinput/pinput.dart';

class OtpPin extends StatefulWidget {
  const OtpPin({super.key});

  @override
  State<OtpPin> createState() => _OtpPinState();
}

class _OtpPinState extends State<OtpPin> {
  TextEditingController _pinEditingController = TextEditingController();
  // final defaultPinTheme = PinTheme(
  //   width: 75,
  //   height: 80,
  //   textStyle: const TextStyle(
  //     fontSize: 22,
  //     color: Colors.black,
  //   ),
  //   decoration: BoxDecoration(
  //     color: Colors.green.shade100,
  //     borderRadius: BorderRadius.circular(8),
  //     border: Border.all(color: Colors.transparent),
  //   ),
  // );
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
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
                    "OTP",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  // Pinput(
                  //   length: 4,
                  //   defaultPinTheme: defaultPinTheme,
                  //   focusedPinTheme: defaultPinTheme.copyWith(
                  //     decoration: defaultPinTheme.decoration!.copyWith(
                  //       border: Border.all(color: Colors.green),
                  //     ),
                  //   ),
                  //   onCompleted: (pin) {
                  //     _pinEditingController.text = pin;
                  //     debugPrint(pin);
                  //     log("IDSSDFD====> ${_pinEditingController.text}");
                  //   },
                  // ),
                  SizedBox(
                    height: 20,
                  ),

                  //  ),
                  ButtonStyeCustom('ตกลง'),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "คุณยังไม่ได้รับรหัส?",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "ส่งอีกครั้ง",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  )
                ]),
          ),
        ));
  }

  ButtonStyeCustom(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),

              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 51, 221, 243), // text color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // button border radius
              ),
              elevation: 5, // button elevation
            ),
            onPressed: () {
              _onTapSenOTP();
            },
            child: Text(
              label,
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                  fontSize: 18),
            )),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  _onTapSenOTP() {}
}
