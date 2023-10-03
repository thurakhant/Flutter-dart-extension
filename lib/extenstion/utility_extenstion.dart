extension DoubleExtension on double {
  String toPercentageString({int decimalPlaces = 2}) {
    final percentage = (this * 100).toStringAsFixed(decimalPlaces);
    return '$percentage%';
  }
}
