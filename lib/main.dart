import 'package:adkar/core/service_locator.dart';
import 'package:adkar/feature/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  setupServiceLocator();
  runApp(const AdkharApp());
}

class AdkharApp extends StatelessWidget {
  const AdkharApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
