import 'package:suscription_payment/src/models/subscription_item.dart';
import 'package:flutter/material.dart';

class SubscriptionProvider extends ChangeNotifier {
  final List<SubscriptionItem> _subsItems = [];
  //String name = '';
  //int price = 0;

  void addSubscription(SubscriptionItem subscription) {
    _subsItems.add(subscription);
    notifyListeners();
  }

  List<SubscriptionItem> get subscriptions => _subsItems;

  void removeSubscription(SubscriptionItem subscription) {
    _subsItems.remove(subscription);
    notifyListeners();
  }

  double get getTotal {
    double totalAmount = 0;

    for (int i = 0; i < _subsItems.length; i++) {
      totalAmount += _subsItems[i].price;
    }

    return totalAmount;
  }
}
