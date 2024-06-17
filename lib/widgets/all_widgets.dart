import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

Widget ButtonStyeCustom(String label, String route) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: (label == 'ล็อคอิน' || label == 'ล็อคอิน Facebook')
                ? EdgeInsets.symmetric(horizontal: 95, vertical: 10)
                : null,
            foregroundColor: Colors.white,
            backgroundColor: (label == 'ล็อคอิน Facebook')
                ? Colors.blue[900]
                : Color.fromARGB(255, 51, 221, 243), // text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // button border radius
            ),
            elevation: 5, // button elevation
          ),
          onPressed: () {
            log("message==> $route");
            Modular.to.pushNamed('/$route');
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
      )
    ],
  );
}

Widget textFieldCustom(String label, controller) {
  bool _isobscureText = true;
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
                obscureText: (label == 'รหัสผ่าน') ? true : false,
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
                              _isobscureText = !_isobscureText;
                              log("message==> $_isobscureText");
                            },
                            // icon:
                            //  Icon(label == 'อีเมล'
                            //     ? Icons.visibility
                            //     :
                            //      Icons.visibility_off
                            //      )
                            icon: Icon(Icons.visibility_off))
                        : null),
              ),
            ],
          )),
      SizedBox(
        height: 10,
      )
    ],
  );
}

Widget textAllTitle(String title) {
  return Text(
    title,
    style: TextStyle(fontSize: 24, color: Colors.white),
  );
}
