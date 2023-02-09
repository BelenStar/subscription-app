import 'package:flutter/material.dart';
import 'package:suscription_payment/src/app.dart';
import 'package:provider/provider.dart';
import 'package:suscription_payment/src/provider/new_subscription_provider.dart';

void main() {
  runApp(ChangeNotifierProvider<SubscriptionProvider>(
    child: const MyApp(),
    create: (_) => SubscriptionProvider(), // Create a new ChangeNotifier object
  ));
}
