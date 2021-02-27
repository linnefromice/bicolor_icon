// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BicolorIcon extends StatelessWidget {
  BicolorIcon({
    this.iconData,
    this.iconSize,
    this.rate,
    this.beginAlignment,
    this.endAlignment,
    this.beginColor,
    this.endColor
  });
  final IconData iconData;
  final double iconSize;
  final double rate;
  final Alignment beginAlignment;
  final Alignment endAlignment;
  final Color beginColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: beginAlignment,
        end: endAlignment,
        colors: [beginColor, endColor],
        stops: [rate, rate],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: Container(
        child: Center(
          child: Icon(
            iconData,
            size: iconSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
