import 'package:flutter/material.dart';
import 'app_drawer.dart'; // Import the reusable drawer

class AppPage2 extends StatelessWidget {
  const AppPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white), // White burger menu
      ),
      drawer: const AppDrawer(), // Use the shared drawer
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/images/home_image.png',
          fit: BoxFit.contain,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
