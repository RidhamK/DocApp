import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:repolab/screens/doc/doctor.dart';

import '/models/authentication.dart';

class Doclogin extends StatefulWidget {
  const Doclogin({Key? key}) : super(key: key);
  static const routeName = 'to doc login';

  @override
  _DocloginState createState() => _DocloginState();
}

class _DocloginState extends State<Doclogin> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

  bool _isLogin = false;

  final Map<String, String> _authLoginData = {
    'email': '',
    'password': '',
  };

  final Map<String, String> _authSignUpData = {
    'email': '',
    'password': '',
  };

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(10),
          color: Colors.white,
          elevation: 5,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      key: const ValueKey('email'),
                      controller: _emailController,
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'Enter Valid Email Address';
                        }
                        return null;
                      },
                      onSaved: (newValue) {
                        _authLoginData['email'] = newValue!;
                        _authSignUpData['email'] = newValue;
                      },
                    ),
                    TextFormField(
                      key: const ValueKey('password'),
                      controller: _passController,
                      decoration: const InputDecoration(labelText: 'Password'),
                      validator: (value) {
                        if (value!.isEmpty || value.length < 8) {
                          return 'Password should be of 8 numeric digit';
                        }
                      },
                      onSaved: (newValue) {
                        _authLoginData['password'] = newValue!;
                        _authSignUpData['password'] = newValue;
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _submit();
                      },
                      child: Text('Login'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(DocScreen.routeName, arguments: false);
                      },
                      child: const Text('Skip'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
