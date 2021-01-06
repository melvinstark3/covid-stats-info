import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_place.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePlace()),
              );
            },
            child: Image.asset(
              'images/logo.jpg',
              fit: BoxFit.cover,
              width: 250.0,
              height: 250.0,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 20.0,
          ),
          Text(
            'Corona',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 40.0,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Predictor',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 40.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }
}
