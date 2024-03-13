import 'package:ecommerce_admin/globals/constants.dart';
import 'package:ecommerce_admin/pages/error404_page.dart';
import 'package:ecommerce_admin/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.poppins(),
      )).copyWith(
        scaffoldBackgroundColor: bgColor,
        primaryColor: primaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black87),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[300],
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
          foregroundColor: const Color.fromRGBO(49, 100, 100, 1.0),
        )),
        canvasColor: secondaryColor,
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
