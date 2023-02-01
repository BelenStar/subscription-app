import 'package:flutter/material.dart';
import 'package:suscription_payment/src/pages/suscription_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  Center(
        child: SubscriptionPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

