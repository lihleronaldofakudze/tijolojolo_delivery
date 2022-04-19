import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tijolojolo_delivery/screens/core_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tijolojolo Delivery',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const CoreScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
    );
  }
}
