import 'package:flutter/material.dart';
import 'package:suscription_payment/src/classes/subscription_item.dart';

class NewSubscriptionPage extends StatefulWidget {
  @override
  createState() => _NewSubscriptionPageState();
}

class _NewSubscriptionPageState extends State<NewSubscriptionPage> {
  final List<SubscriptionItem> _subsItems = [];

  TextEditingController name = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController price = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.subscriptions),
        title: const Text('New Subscription'),
      ),
      body: Center(
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: name,
              )
            ],
          ),
        ),
      ),
    );
  }
}
