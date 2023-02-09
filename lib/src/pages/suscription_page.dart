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

    return Scaffold(
      //backgroundColor: Color(0xff42C2FF),
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

        //backgroundColor: Color.fromARGB(255, 179, 184, 183),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height * 0.79,
              //width: MediaQuery.of(context).size.widt * 0.,
              child: ListView.builder(
                  itemCount: subscriptions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Material(
                        //color: Color(0xffB8FFF9),
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
                        ),
                      ),
                    );
                  })),
          Container(
            //color: Colors.amber,
            width: 400,
            //height: 135,
            height: MediaQuery.of(context).size.height * 0.10,
            child: const ListTile(
                leading: Icon(
                  Icons.monetization_on,
                  size: 40,
                  color: Colors.white,
                ),
                title: Text(
                  'All Expenses',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "\$ 42.5",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Per month',
                  style: TextStyle(color: Colors.white70),
                ),
                //tileColor: Color(0xffB8FFF9),
                tileColor: Colors.black54,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)))),
          )
        ],
      ),
    );
  }
}
