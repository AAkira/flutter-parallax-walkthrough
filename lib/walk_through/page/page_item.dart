import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

abstract class PageItem extends StatelessWidget {
  ValueNotifier<double> get valueNotifier;
}
