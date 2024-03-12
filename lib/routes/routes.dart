import 'package:ecommerce_admin/pages/home/home_page_ui.dart';
import 'package:ecommerce_admin/pages/login/login_page_ui.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/home': (BuildContext context) => const HomePageUi(),
    '/login': (BuildContext context) => const LoginPageUi(),
  };
}
