import 'package:flutter/material.dart';
import 'package:login_sf/services/shared_preferences.dart';

class HomePage extends StatelessWidget {
  final PrefService _prefService = PrefService();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Home'),
            ElevatedButton(
              onPressed: () async {
                await _prefService
                    .removeCache('password')
                    .whenComplete(() => Navigator.pushNamed(context, '/login'));
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
