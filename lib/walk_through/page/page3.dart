import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parallax_walkthrough/walk_through/page/page_contents.dart';
import 'package:flutter_parallax_walkthrough/walk_through/page/page_item.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page3 extends PageItem {
  @override
  final ValueNotifier<double> valueNotifier = ValueNotifier<double>(-1);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (context, double ratio, child) {
        return PageContents(
          backgroundColor: Colors.deepOrange,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
              child: Transform.translate(
                offset: Offset(ratio > 0 ? 100 * ratio : 10 * ratio, 0),
                child: Text(
                  'Crafted by professional chefs',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.merge(const TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 200,
              child: Transform.translate(
                offset: Offset(ratio > 0 ? 200 * ratio : 30 * ratio, 0),
                child: SvgPicture.asset(
                  'assets/kitchen2.svg',
                  width: 200,
                ),
              ),
            ),
            Positioned(
              left: 200,
              top: 350,
              child: Transform.translate(
                offset: Offset(ratio > 0 ? 100 * ratio : 200 * ratio, 0),
                child: SvgPicture.asset(
                  'assets/man1.svg',
                  width: 200,
                ),
              ),
            ),
            Positioned(
              left: 140,
              top: 500,
              child: Transform.translate(
                offset: Offset(ratio > 0 ? 150 * ratio : 140 * ratio, 0),
                child: SvgPicture.asset(
                  'assets/egg.svg',
                  width: 130,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
