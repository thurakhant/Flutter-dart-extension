import 'package:flutter/material.dart';

extension CustomRowExtension on Row {
  Widget customRowWithSpacing({
    double spacing = 8.0,
    List<Widget> children = const <Widget>[],
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: children
          .map((child) => Row(
                children: [
                  child,
                  SizedBox(
                    width: spacing,
                  ),
                ],
              ))
          .toList(),
    );
  }
}
