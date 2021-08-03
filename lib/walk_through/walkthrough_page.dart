import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parallax_walkthrough/walk_through/dots_indicator.dart';
import 'package:flutter_parallax_walkthrough/walk_through/page/page1.dart';
import 'package:flutter_parallax_walkthrough/walk_through/page/page2.dart';
import 'package:flutter_parallax_walkthrough/walk_through/page/page3.dart';
import 'package:flutter_parallax_walkthrough/walk_through/page/page4.dart';

final _children = [
  Page1(),
  Page2(),
  Page3(),
  Page4(),
];

final PageController _pageController = PageController();

class WalkThroughPage extends StatelessWidget {
  const WalkThroughPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Body(),
    );
  }
}

class _Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  double? _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: _children.length,
          itemBuilder: (context, index) {
            final item = _children[index];
            item.valueNotifier.value = (_pageController.offset /
                    _pageController.position.viewportDimension) -
                index;
            return item;
          },
        ),
        Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: DotsIndicator(
            dotsCount: _children.length,
            position: _currentIndex ?? 0,
          ),
        ),
      ],
    );
  }
}
