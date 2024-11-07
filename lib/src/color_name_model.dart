import 'package:flutter/material.dart';

/// A model class representing a color and its display name.
class ColorName {
  final String name;
  final Color color;
  final String? description;

  const ColorName(this.name, this.color, {this.description})
      : assert(name != '');

  String get toHex {
    return '#${color.value.toRadixString(16).substring(2)}';
  }

  String get toRgb {
    return 'rgb(${color.red}, ${color.green}, ${color.blue})';
  }

  @override
  String toString() {
    return 'ColorName{name: $name, color: $toHex}';
  }
}
