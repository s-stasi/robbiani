import 'package:flutter/material.dart';

List<Row> reorder(List<Widget> origin, double width) {
  var k = origin.length;
  List<Row> rows = [];

  for (int i = 1; i <= (origin.length / (width / 310).floor()).ceil(); i++) {
    List<Widget> temp = [];
    for (int j = 1; j <= (width / 310).floor(); j++) {
      if ((origin.length - j * i) < k && (origin.length - j * i) < 0) {
        temp.add(origin[(j * i) - 1]);
        k--;
      }
    }
    rows.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: temp,
    ));
  }

  return rows;
}
