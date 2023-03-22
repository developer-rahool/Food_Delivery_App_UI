import 'package:flutter/material.dart';
import 'package:food_delivery/view/screens/splash_screen.dart';
import 'package:get/get.dart';

import 'controller/splash_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
      ),
      getPages: SplashRoute.routes(),
    );
  }
}
