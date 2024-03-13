import 'package:ecommerce_admin/globals/constants.dart';
import 'package:ecommerce_admin/globals/drawer_lateral.dart';
import 'package:flutter/material.dart';

class HomePageUi extends StatefulWidget {
  const HomePageUi({super.key});

  @override
  State<HomePageUi> createState() => _HomePageUiState();
}

class _HomePageUiState extends State<HomePageUi> {
  final String _page = 'Pagina Principal';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBarMobile(context, _page),
      drawer: MyDrawerLateral(currentPage: _page),
      body: const Text('Hola'),
    );
  }
}
