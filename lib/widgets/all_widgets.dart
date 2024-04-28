import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

Widget ButtonStyeCustom(String label, String route) {
  return Column(
    children: [
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: (label == 'ล็อคอิน Facebook')
                ? Colors.lightBlue
                : Color.fromARGB(255, 71, 216, 120), // text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // button border radius
            ),
            elevation: 5, // button elevation
          ),
          onPressed: () {
            Modular.to.pushNamed('/${route}');
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
