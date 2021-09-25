import 'package:flutter/material.dart';

class DocScreen extends StatefulWidget {
  const DocScreen({Key? key}) : super(key: key);
  static const routeName = 'to doc';

  @override
  _DocScreenState createState() => _DocScreenState();
}

class _DocScreenState extends State<DocScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.lock_clock)),
              Tab(icon: Icon(Icons.manage_accounts)),
            ],
          ),
          title: const Text('Welcome Doc'),
        ),
      ),
    );
  }
}
