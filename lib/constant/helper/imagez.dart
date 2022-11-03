import 'package:flutter/material.dart';

extension Images on String {
  Widget image({double? size, BoxFit? fit}) => Image.asset(
        "assets/images/$this.png",
        width: size ?? 20,
        height: size ?? 20,
        fit: fit ?? BoxFit.cover,
      );
}
