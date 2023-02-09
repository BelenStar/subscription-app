import 'package:flutter/material.dart';
import 'package:suscription_payment/src/pages/new_subscription_page.dart';
import 'package:suscription_payment/src/pages/suscription_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Center(
        child: SubscriptionPage(),
      ),
      routes: <String, WidgetBuilder>{
        '/subscriptions': (context) => const SubscriptionPage(),
        '/add_subscription': (context) => const NewSubscriptionPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
