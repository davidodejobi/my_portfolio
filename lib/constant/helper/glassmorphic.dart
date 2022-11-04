import 'dart:ui';

import 'package:flutter/material.dart';

extension Glassmorpic on Widget {
  Widget glassmorphicx({
    double blur = 2,
    double borderRadius = 10,
    double spreadRadius = 0,
    double offset = 0,
    Color color = Colors.white,
    Color shadowColor = Colors.black,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: shadowColor.withAlpha(100),
                blurRadius: blur,
                spreadRadius: spreadRadius,
                offset: Offset(offset, offset),
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color.withOpacity(0.8),
                color.withOpacity(0.8),
              ],
            ),
          ),
          child: this,
        ),
      ),
    );
  }
}
