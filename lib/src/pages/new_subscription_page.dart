import 'package:flutter/material.dart';
import 'package:suscription_payment/src/classes/subscription_item.dart';
import 'package:suscription_payment/src/lists/subs_types_list.dart';

class NewSubscriptionPage extends StatefulWidget {
  const NewSubscriptionPage({super.key});

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
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: [
              TextField(
                controller: name,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    labelText: 'Service',
                    hintText: 'spotify, netflix...',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38),
                      borderRadius: BorderRadius.all(Radius.circular(15.5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(15.5)),
                    )),
              ),
              const SizedBox(height: 4),
              DropdownButton(
                  items: dropdownServicesTypes
                      .map((e) => DropdownMenuItem(child: Text(e), value: e))
                      .toList(),
                  value: dropdownServicesTypes,
                  onChanged: (val) {}),
              TextField(
                controller: type,
                //keyboardType: Tex,
                decoration: const InputDecoration(
                  labelText: 'Category',
                  hintText: 'music, streaming...',
                ),
              ),
              const SizedBox(height: 4),
              TextField(
                controller: price,
                decoration: const InputDecoration(
                  labelText: 'Price',
                  hintText: 'monthly payment',
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Add'))
            ],
          ),
        ),
      ),
    );
  }
}
