import 'package:flutter/material.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  
  @override
   createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        leading: const Icon(Icons.subscriptions),
        title: const Text('Your subscriptions'),
        //actions: [],
      ),
      body:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: ListTile(
              leading: const Icon(Icons.library_music_sharp),
              title: const Text('Spotify'),
              trailing: const Text("\$2.5"),
              subtitle: const Text('per month') ,
              tileColor: Colors.blueAccent,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.5))),
         //  ),
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),  */
    );
   // );
  }
}
