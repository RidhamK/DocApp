import 'package:flutter/material.dart';
import 'package:repolab/screens/doc/doclogin.dart';
import 'package:repolab/screens/doc/doctor.dart';
import 'package:repolab/screens/homescreen.dart';
import 'package:repolab/screens/patient/patientlogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Select Category'),
      routes: {
        DocScreen.routeName: (ctx) => const DocScreen(),
        Doclogin.routeName: (ctx) => const Doclogin(),
        PatientLogin.routeName: (ctx) => const PatientLogin(),
      },
    );
  }
}
