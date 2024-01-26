import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/animation/payment_success.json"),
        //child: Lottie.network("https://lottie.host/3db693de-d171-4d7b-b477-b2026a3673d2/bHZiYSr9B2.json"),
      ),
    );
  }
}
