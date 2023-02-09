import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

abstract class ThemeStyle {
  static const InputDecoration nameFormField = InputDecoration(
      labelText: 'Service',
      hintText: 'spotify, netflix...',
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black38),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ));

  static const InputDecoration typeFormField = InputDecoration(
      labelText: 'Category',
      hintText: 'work, music...',
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black38),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ));

  static const InputDecoration priceFormField = InputDecoration(
      labelText: 'Price',
      hintText: 'monthly payment',
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black38),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ));

  static const TextStyle subscriptionTitle =
      TextStyle(color: Colors.black54, fontWeight: FontWeight.bold);

  static const TextStyle subscriptionSubtitle =
      TextStyle(color: Colors.black38);

  static const TextStyle subscriptionTrailing =
      TextStyle(color: Colors.black38, fontWeight: FontWeight.bold);
}
