import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

Widget ButtonStyeCustom(String label, String route) {
  return Column(
    children: [
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.lightBlue, // text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // button border radius
            ),
            elevation: 5, // button elevation
          ),
          onPressed: () {
            Modular.to.pushNamed('/${route}');
          },
          child: Text(
            label,
            style: TextStyle(fontStyle: FontStyle.normal),
          )),
      SizedBox(
        height: 10,
      )
    ],
  );
}
