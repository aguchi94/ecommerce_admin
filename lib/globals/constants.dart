import 'package:flutter/material.dart';

const primaryColor = Color(0xFF2697FF);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFFC0C0C0);
const txtGrey = Color.fromARGB(138, 255, 255, 255);

AppBar myAppBarMobile(BuildContext context, String page) {
  return AppBar(
    backgroundColor: secondaryColor,
    title: titleStyleGrey(page),
  );
}

Text titleStyleGrey(String text) {
  return Text(
    text,
    style: const TextStyle(
      color: txtGrey,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
  );
}

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
        const Opacity(
          opacity: 0.4,
          child: Text('Logo'),
        ),
      ],
    ),
  );
}
