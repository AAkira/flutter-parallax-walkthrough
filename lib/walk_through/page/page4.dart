import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parallax_walkthrough/walk_through/page/page_contents.dart';
import 'package:flutter_parallax_walkthrough/walk_through/page/page_item.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page4 extends PageItem {
  @override
  final ValueNotifier<double> valueNotifier = ValueNotifier<double>(-1);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (context, double ratio, child) {
        return PageContents(
          backgroundColor: Colors.green,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
              child: Transform.translate(
                offset: Offset(ratio > 0 ? 100 * ratio : 10 * ratio, 0),
                child: Text(
                  'Makes getting great food',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.merge(const TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Positioned(
              left: 120,
              top: 400,
              child: Transform.translate(
                offset: Offset(ratio > 0 ? 250 * ratio : 100 * ratio, 0),
                child: SvgPicture.asset(
                  'assets/pot.svg',
                  width: 250,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 500,
              child: Transform.scale(
                scale: (ratio > 0 ? 1 : ratio) + 1,
                child: SvgPicture.asset(
                  'assets/food.svg',
                  width: 150,
                ),
              ),
            ),
            Positioned(
              left: 230,
              top: 550,
              child: Transform.scale(
                scale: (ratio > 0 ? 0 : ratio) + 1,
                child: SvgPicture.asset(
                  'assets/food2.svg',
                  width: 180,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
