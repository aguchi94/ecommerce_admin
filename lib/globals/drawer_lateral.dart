import 'package:ecommerce_admin/globals/constants.dart';
import 'package:flutter/material.dart';

class MyDrawerLateral extends StatelessWidget {
  final String currentPage;

  const MyDrawerLateral({super.key, required this.currentPage});

  void _navigateToPage(BuildContext context, String page) {
    Navigator.of(context).pushNamed('/$page');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: secondaryColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo-ecommerce-go-3-GREY.png"),
          ),
          DrawerListTile(
            title: "Pagina Principal",
            press: () {
              _navigateToPage(context, 'homePage');
            },
            selected: currentPage == 'Pagina Principal',
          ),
          DrawerListTile(
            title: "Productos",
            press: () {
              _navigateToPage(context, 'productPage');
            },
            selected: currentPage == 'Productos',
          ),
          DrawerListTile(
            title: "Ventas",
            press: () {},
            selected: currentPage == 'Ventas',
          ),
          DrawerListTile(
            title: "Usuarios",
            press: () {},
            selected: currentPage == 'Usuarios',
          ),
          DrawerListTile(
            title: "Repartidores",
            press: () {},
            selected: currentPage == 'Repartidores',
          ),
          DrawerListTile(
            title: "Notificationes",
            press: () {},
            selected: currentPage == 'Notificationes',
          ),
          DrawerListTile(
            title: "Profile",
            press: () {},
            selected: currentPage == 'Profile',
          ),
          DrawerListTile(
            title: "Configuracion",
            press: () {},
            selected: currentPage == 'Configuracion',
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.press,
    required this.selected,
  });

  final String title;
  final VoidCallback press;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      title: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.blue : txtGrey,
        ),
      ),
    );
  }
}
