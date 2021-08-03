import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parallax_walkthrough/walk_through/page/page_contents.dart';
import 'package:flutter_parallax_walkthrough/walk_through/page/page_item.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page1 extends PageItem {
  @override
  final ValueNotifier<double> valueNotifier = ValueNotifier<double>(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (context, double ratio, child) {
        return PageContents(
          backgroundColor: Colors.blue,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
              child: Transform.translate(
                offset: Offset(200 * ratio, 0),
                child: Text(
                  'Make everyday cooking fun',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.merge(const TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.symmetric(vertical: 300),
              child: Transform.translate(
                offset: Offset(700 * ratio, 0),
                child: SvgPicture.asset(
                  'assets/shelves.svg',
                  width: 400,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.symmetric(vertical: 100),
              child: Transform.translate(
                offset: Offset(300 * ratio, 0),
                child: SvgPicture.asset(
                  'assets/woman1.svg',
                  width: 100,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.symmetric(vertical: 100),
              child: Transform.translate(
                offset: Offset(600 * ratio, 0),
                child: SvgPicture.asset(
                  'assets/table.svg',
                  width: 350,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
