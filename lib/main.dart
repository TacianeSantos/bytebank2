import 'package:bytebank2/screens/contact_form.dart';
import 'package:bytebank2/screens/contacts_list.dart';
import 'package:bytebank2/screens/dashboard.dart';
import 'package:bytebank2/screens/home_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        buttonTheme:  ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
      ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => Dashboard(),
        '/contacts_list': (context) => ContactsList(),
        '/contact_form': (context) => ContactForm(),
      }
    );
  }
}

