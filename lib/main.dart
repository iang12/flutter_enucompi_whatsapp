import 'package:flutter/material.dart';
import 'package:flutter_enucompi_whatsapp/homePage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Whatsapp',
    debugShowCheckedModeBanner:false,
    theme: ThemeData(
      primaryColor: Color(0xff075E54),
      accentColor: Color(0xff25D366),
    ),
    home: HomePage(),
  ));
}
