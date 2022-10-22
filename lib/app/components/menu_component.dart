import 'package:flutter/material.dart';
import '../screens/list_currencies_screens.dart';

Widget MenuComponent(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('MENU'),
        ),
        ListTile(
          title: const Text('COTAÇÃO BTC'),
          leading: Icon(Icons.ice_skating),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ListCurrencies(title: 'Cotação BTC')));
          },
        ),
      ],
    ),
  );
}
