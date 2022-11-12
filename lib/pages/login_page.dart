import 'package:flutter/material.dart';
import 'package:login_sf/services/shared_preferences.dart';

import '../route.dart';

class LoginPage extends StatefulWidget {
  final PrefService _prefService = PrefService();

  final email = TextEditingController();
  final password = TextEditingController();

  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login page'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Login'),
                const SizedBox(height: 20),
                TextField(
                  controller: widget.email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  controller: widget.password,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    if (widget.email.text == 'admin' &&
                        widget.password.text == 'admin') {
                      await widget._prefService
                          .createCache(widget.password.text)
                          .whenComplete(
                              () => Navigator.of(context).pushNamed(HomeRoute));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Wrong username or password'),
                        ),
                      );
                    }
                  },
                  child: const Text('Login'),
                ),
              ]),
        ),
      ),
    );
  }
}
