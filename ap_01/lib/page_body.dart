import 'package:flutter/material.dart';

Widget pageBody(String imgUrl, String title, String description) {
  return Column(
    children: [
      Image.asset('assets/imag/Anakin.png'),
      Text(
        title,
        style: TextStyle(
          fontSize: 43,
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        description,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black26,
        ),
      ),
    ],
  );
}

Widget pageBody2(String imgUrl, String title, String description) {
  return Column(
    children: [
      Image.asset('assets/imag/luke.jpg'),
      Text(
        title,
        style: TextStyle(
          fontSize: 43,
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        description,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black26,
        ),
      ),
    ],
  );
}

Widget pageBody3(String imgUrl, String title, String description) {
  return Column(
    children: [
      Image.asset('assets/imag/Yoda.png'),
      Text(
        title,
        style: TextStyle(
          fontSize: 43,
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        description,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black26,
        ),
      ),
    ],
  );
}
