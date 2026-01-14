import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreditCardScreen(),
    );
  }
}

class CreditCardScreen extends StatelessWidget {
  const CreditCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Credit Card Info')),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: const Color.fromARGB(255, 231, 224, 224),
      body: Center(
        child: Container(
          width: 340,
          height: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [Color(0xFF1D2671), Color.fromARGB(255, 223, 74, 121)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 150,
                left: 100,
                child: Icon(
                  FontAwesomeIcons.creditCard,
                  color: Colors.white,
                  size: 45,
                ),
              ),

              /// CHIP ICON (left top)
              Positioned(top: 20, left: 20, child: buildCardChip()),

              /// CARD LOGO (right top)
              Positioned(top: 20, right: 20, child: buildCardLogo()),

              /// CARD NUMBER
              const Positioned(
                bottom: 80,
                left: 20,
                child: Text(
                  '4359 0092 2343 0011',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    letterSpacing: 2,
                  ),
                ),
              ),

              /// CARD HOLDER
              const Positioned(
                bottom: 30,
                left: 20,
                child: Text(
                  'REHMAN ALI',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),

              /// EXPIRY DATE
              const Positioned(
                bottom: 30,
                right: 20,
                child: Text(
                  '12/28',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// CARD LOGO (Mastercard)
  Widget buildCardLogo() {
    return Image.asset(
      'assets/images/mastercard.png',
      width: 90,
      height: 60,
      fit: BoxFit.contain,
    );
  }

  /// CARD CHIP
  Widget buildCardChip() {
    return Image.asset(
      'assets/images/chip.png',
      width: 55,
      height: 40,
      fit: BoxFit.contain,
    );
  }
}
