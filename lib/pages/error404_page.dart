import 'package:ecommerce_admin/globals/constants.dart';
import 'package:flutter/material.dart';

class Error404Page extends StatelessWidget {
  const Error404Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              titleAppGo('Lo siento!'),
              Image.asset('assets/images/mantenimiento.jpg'),
              const SizedBox(height: 20),
              const Text(
                'Esta sección está en desarrollo...',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
