import 'package:flutter/material.dart';

Padding titleAppGo(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 15.0,
      horizontal: 15.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 25,
          ),
        ),
        Opacity(
          opacity: 0.4,
          child: Image.asset(
            'assets/images/newlogo365.png',
            width: 40,
            height: 40,
          ),
        ),
      ],
    ),
  );
}
