// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery/controller/splash_controller.dart';
import 'package:food_delivery/view/screens/dashboard.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);
  final SplashController splashController = SplashController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const  [
            SizedBox(
              height: 200,
              width: 200,
              child:  Image(image: AssetImage("images/shopefood.png"), fit: BoxFit.fill,),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, ),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris aliquam nisl sed vehicula tempus. Sed pellentesque.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        )
    );
  }
}

