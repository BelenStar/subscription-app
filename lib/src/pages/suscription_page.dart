import 'package:flutter/material.dart';
import 'package:suscription_payment/src/styles/styles.dart';
import 'package:provider/provider.dart';
import 'package:suscription_payment/src/provider/new_subscription_provider.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  @override
  Widget build(BuildContext context) {
    //final subscriptions = context.watch<SubscriptionProvider>().subscriptions;
    final subscriptions =
        Provider.of<SubscriptionProvider>(context).subscriptions;

    int totalAmount = 0;

    void totalExpenses() {
      for (int i = 0; i < subscriptions.length; i++) {
        setState(() {
          totalAmount += subscriptions[i].price;
        });
      }
    }

    totalExpenses();
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.subscriptions,
          color: Colors.black38,
        ),
        title: const Text(
          'Your subscriptions',
          style: TextStyle(color: Colors.black38, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () =>
                  {Navigator.pushNamed(context, '/add_subscription')},
              icon: const Icon(
                Icons.add_circle,
                color: Colors.black38,
              ))
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height * 0.76,
              //width: MediaQuery.of(context).size.widt * 0.,
              child: ListView.builder(
                  itemCount: subscriptions.length,
                  itemBuilder: (BuildContext context, int index) {
                    final currentSubscription = subscriptions[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Material(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        elevation: 15,
                        shadowColor: Colors.black,
                        child: ListTile(
                          leading: const Icon(
                            Icons.library_music_sharp,
                            size: 40,
                          ),
                          title: Text(
                            subscriptions[index].name,
                            style: ThemeStyle.subscriptionTitle,
                          ),
                          trailing: Text(
                            '\$ ${subscriptions[index].price}',
                            style: ThemeStyle.subscriptionTrailing,
                          ),
                          subtitle: const Text(
                            'music',
                            style: ThemeStyle.subscriptionSubtitle,
                          ),
                          tileColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.5)),
                          onLongPress: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return SimpleDialog(
                                    children: [
                                      SimpleDialogOption(
                                        child: const Text('Delete'),
                                        onPressed: () {
                                          context
                                              .read<SubscriptionProvider>()
                                              .removeSubscription(
                                                  currentSubscription);

                                          Navigator.of(context).pop();
                                        },
                                      )
                                    ],
                                  );
                                });
                          },
                        ),
                      ),
                    );
                  })),
          SizedBox(
            width: 400,
            height: MediaQuery.of(context).size.height * 0.10,
            child: ListTile(
                leading: const Icon(
                  Icons.monetization_on,
                  size: 40,
                  color: Colors.white,
                ),
                title: const Text(
                  'All Expenses',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  '$totalAmount',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  'Per month',
                  style: TextStyle(color: Colors.white70),
                ),
                tileColor: Colors.black54,
                shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)))),
          )
        ],
      ),
    );
  }
}
