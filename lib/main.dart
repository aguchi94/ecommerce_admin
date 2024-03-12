import 'package:ecommerce_admin/pages/error404_page.dart';
import 'package:ecommerce_admin/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce Go Admin',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: getApplicationRoutes(),
      initialRoute: '/home',
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => const Error404Page(),
        );
      },
    );
  }
}
