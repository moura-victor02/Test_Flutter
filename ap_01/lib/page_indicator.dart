import 'package:flutter/material.dart';

Widget pageIndicator(bool currentpage) {
  return Container(
    width: currentpage ? 15 : 10,
    height: currentpage ? 15 : 10,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: currentpage ? Colors.black87 : Colors.black38,
    ),
  );
}
