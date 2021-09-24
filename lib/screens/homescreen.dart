import 'package:flutter/material.dart';
import 'package:repolab/screens/doc/doctor.dart';
import 'package:repolab/screens/patient/patientlogin.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GridTile(
              child: ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(DocScreen.routeName),
                  child: Text('Doctor')),
            ),
            GridTile(
              child: ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(PatientLogin.routeName),
                  child: Text('Patient')),
            ),
          ],
        ),
      ),
    );
  }
}
