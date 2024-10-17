import 'package:flutter/material.dart';
import 'package:runner_lub_solutions/create_new_password_screen.dart';
import 'package:runner_lub_solutions/otp_verification_screen.dart';
import 'package:runner_lub_solutions/password_changed_screen.dart';
import 'package:runner_lub_solutions/profile_screen.dart';
import 'package:runner_lub_solutions/redeemed_screen.dart';
import 'package:runner_lub_solutions/refer_others_screen.dart';
import 'package:runner_lub_solutions/rewards_screen.dart';
import 'package:runner_lub_solutions/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
