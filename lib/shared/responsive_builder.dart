import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? laptop;

  const ResponsiveBuilder({
    Key? key,
    required this.mobile,
    this.laptop,
    this.tablet,
  }) : super(key: key);

  // This gives us some control over the size of the widget
  // when working on various sreens.
  // And it might be different when working with another design.
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 480;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024 &&
      MediaQuery.of(context).size.width >= 480;

  static bool isLaptop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1600;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 480) {
          return mobile;
        } else if (constraints.maxWidth > 480 && constraints.maxWidth < 1024) {
          return tablet ?? mobile;
        } else if (constraints.maxWidth >= 1024) {
          return laptop ?? tablet ?? mobile;
        }
        return laptop ?? mobile;
      },
    );
  }
}
