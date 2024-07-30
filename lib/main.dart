       import 'package:dev_challenge_2/Logo.dart';
import 'package:dev_challenge_2/core/Router/OngenerateRoute.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: LogoS(),
      onGenerateRoute:(settings)=> AppRoute().ongenerateRoute(settings),
    );
  }
}