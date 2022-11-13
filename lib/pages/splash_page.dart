import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_sf/route.dart';
import 'package:login_sf/services/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final PrefService _prefService = PrefService();

  @override
  void initState() {
    _prefService.readCache("password").then((value) {
      if (value != null) {
        return Timer(const Duration(seconds: 2),
            () => Navigator.of(context).pushNamed(HomeRoute));
      } else {
        return Timer(
          const Duration(seconds: 2),
          () => Navigator.of(context).pushNamed(LoginRoute),
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.app_blocking,
        ),
      ),
    );
  }
}
