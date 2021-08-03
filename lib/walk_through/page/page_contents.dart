import 'package:flutter/material.dart';

class PageContents extends StatelessWidget {
  const PageContents({
    Key? key,
    required this.backgroundColor,
    required this.children,
  }) : super(key: key);

  final Color backgroundColor;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Stack(children: children),
    );
  }
}
