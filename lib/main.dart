import 'package:flutter/material.dart';
import 'credit_card_screen.dart'; // jis file mein UI hai

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreditCardScreen(), // yahan aapki UI call hoti hai
    );
  }
}
