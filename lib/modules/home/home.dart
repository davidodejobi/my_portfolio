// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:portfolio/modules/home/widgets/widgets.dart';

import 'package:portfolio/shared/responsive_builder.dart';

import '../../shared/shared.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      mobile: Scaffold(
        body: ResponsiveBuilder(
          tablet: TaabletView(),
          mobile: MobileView(),
        ),
      ),
    );
  }
}
