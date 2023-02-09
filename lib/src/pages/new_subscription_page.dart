import 'package:flutter/material.dart';
import 'package:suscription_payment/src/models/subscription_item.dart';
import 'package:suscription_payment/src/lists/subs_types_list.dart';
import 'package:suscription_payment/src/styles/styles.dart';
import 'package:provider/provider.dart';
import 'package:suscription_payment/src/provider/new_subscription_provider.dart';

class NewSubscriptionPage extends StatefulWidget {
  const NewSubscriptionPage({super.key});

  @override
  createState() => _NewSubscriptionPageState();
}

class _NewSubscriptionPageState extends State<NewSubscriptionPage> {
  late String category = dropdownServicesTypes[0];

  TextEditingController service = TextEditingController();
  TextEditingController amount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final subscriptions = context.watch<SubscriptionProvider>().subscriptions;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.subscriptions),
        title: const Text('New Subscription'),
      ),
      body: Center(
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: [
              TextField(
                controller: service,
                keyboardType: TextInputType.name,
                decoration: ThemeStyle.nameFormField,
              ),
              const SizedBox(height: 15),
              DropdownButtonFormField(
                items: dropdownServicesTypes
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                value: category,
                onChanged: (val) {
                  setState(() {
                    category = val as String;
                  });
                },
                decoration: ThemeStyle.typeFormField,
              ),
              const SizedBox(height: 15),
              TextField(
                controller: amount,
                keyboardType: TextInputType.number,
                decoration: ThemeStyle.priceFormField,
              ),
              ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          service.text.isEmpty && amount.text.isEmpty
                              ? null
                              : subscriptions.add(SubscriptionItem(
                                  name: service.text,
                                  price: int.parse(amount.text)));
                          service.clear();
                          amount.clear();

                          Navigator.pushNamed(context, '/subscriptions');
                        })
                      },
                  child: const Text('Add')),
            ],
          ),
        ),
      ),
    );
  }
}
