import 'package:flutter/material.dart';

extension RowSpacingExtension on List<Widget> {
  Widget rowWithSpacing({
    double spacing = 8.0,
  }) {
    return Row(
      children: [
        for (var i = 0; i < length; i++)
          Row(
            children: [
              this[i],
              if (i < length - 1)
                SizedBox(
                  width: spacing,
                ),
            ],
          ),
      ],
    );
  }
}
