import 'package:flutter/material.dart';

extension ListViewExtension on List<dynamic> {
  Widget asListView({
    Axis scrollDirection = Axis.vertical,
    Widget Function(BuildContext context, int index)? itemBuilder,
  }) {
    return ListView.builder(
      scrollDirection: scrollDirection,
      itemCount: length,
      itemBuilder: (context, index) {
        return itemBuilder != null
            ? itemBuilder(context, index)
            : ListTile(
                title: Text(this[index]),
              );
      },
    );
  }
}
