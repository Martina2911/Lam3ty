import 'package:flutter/material.dart';
import 'package:project1/screens/one_screen/one_screen.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), ()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OneScreen()),
      );
    });
    return Scaffold(
    body: Center(
        child:
        Image.asset('assets/images/logo.png',)
    ));

  }
}