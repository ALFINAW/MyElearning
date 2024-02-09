import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension WidgetAnimationExtension on Widget {
  aml() {
    return this
        .animate()
        .moveX(begin: -200, duration: 600.ms)
        .fadeIn(duration: 600.ms);
  }

  amr() {
    return this
        .animate()
        .moveX(begin: 200, duration: 600.ms)
        .fadeIn(duration: 600.ms);
  }

  amb() {
    return this
        .animate()
        .moveY(begin: 200, duration: 600.ms)
        .fadeIn(duration: 600.ms);
  }

  amx(int index) {
    return this
        .animate()
        .moveX(
          begin: -100,
          duration: (300 + (index * 400)).ms,
        )
        .shimmer(
          duration: (300 + (index * 400)).ms,
        )
        .fadeIn(
          duration: (300 + (index * 400)).ms,
        );
  }
}
