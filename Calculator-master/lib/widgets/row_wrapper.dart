import 'package:flutter/material.dart';

class RowWrapper extends StatelessWidget {
  final List<Widget> list;
  const RowWrapper({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.center,
        children: list,
      ),
    );
  }
}
