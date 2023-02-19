import 'package:flutter/material.dart';

showIcon(category) {
  switch (category) {
    case 'Health':
      return const Icon(
        Icons.health_and_safety,
        size: 35,
      );
    case 'Streaming':
      return const Icon(
        Icons.live_tv,
        size: 35,
      );
    case 'Food':
      return const Icon(Icons.fastfood, size: 40);
    case 'Education & Tech':
      return const Icon(
        Icons.book,
        size: 35,
      );
    case 'Home Services':
      return const Icon(
        Icons.home_rounded,
        size: 35,
      );
    case 'Gaming':
      return const Icon(
        Icons.videogame_asset,
        size: 35,
      );
    case 'Car Services':
      return const Icon(
        Icons.car_repair,
        size: 35,
      );
    case 'Work':
      return const Icon(
        Icons.work,
        size: 35,
      );
    case 'Phone Services':
      return const Icon(
        Icons.phonelink_setup,
        size: 35,
      );
    case 'Music':
      return const Icon(
        Icons.library_music,
        size: 35,
      );
  }
}
