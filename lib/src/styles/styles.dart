import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

abstract class ThemeStyle {
  static const InputDecoration nameFormField = InputDecoration(
      labelText: 'Service',
      floatingLabelStyle: TextStyle(color: Color.fromARGB(255, 12, 58, 95)),
      hintText: 'spotify, netflix...',
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black38),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 12, 58, 95)),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ));

  static const InputDecoration typeFormField = InputDecoration(
      labelText: 'Category',
      floatingLabelStyle: TextStyle(color: Color.fromARGB(255, 12, 58, 95)),
      hintText: 'work, music...',
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black38),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 12, 58, 95)),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ));

  static const InputDecoration priceFormField = InputDecoration(
      labelText: 'Price',
      floatingLabelStyle: TextStyle(color: Color.fromARGB(255, 12, 58, 95)),
      hintText: 'monthly payment',
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black38),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(255, 12, 58, 95)),
        borderRadius: BorderRadius.all(Radius.circular(15.5)),
      ));

  static const TextStyle subscriptionTitle =
      TextStyle(color: Colors.black54, fontWeight: FontWeight.bold);

  static const TextStyle subscriptionSubtitle =
      TextStyle(color: Colors.black38);

  static const TextStyle subscriptionTrailing =
      TextStyle(color: Colors.black38, fontWeight: FontWeight.bold);
}
