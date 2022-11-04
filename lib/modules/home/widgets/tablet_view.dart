import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constant/helper/helper.dart';
import 'package:portfolio/modules/home/view_model/home_provider.dart';
import 'package:portfolio/modules/home/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../../../core/core.dart';
import '../../../shared/shared.dart';

class TaabletView extends StatelessWidget {
  const TaabletView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          children: [
            Consumer<HomeProvider>(builder: (context, value, child) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0x0ff4f4f8).withOpacity(0.8),
                      const Color(0x00b3cde0).withOpacity(0.8),
                      const Color(0x0ff4f4f8).withOpacity(0.8),
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: Column(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                value.changeIndex(0);
                              },
                              child: Center(
                                child: VerticalText(
                                  'About me',
                                  style: Theme.of(context).textTheme.headline4!,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                value.changeIndex(1);
                              },
                              child: Center(
                                child: VerticalText(
                                  'Projects',
                                  style: Theme.of(context).textTheme.headline4!,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
            const XMargin(8),
            Expanded(
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: Container(
                    height: 400,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withAlpha(80)),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withAlpha(100),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    portfolio.image,
                                    fit: BoxFit.cover,
                                  ),
                                ).paddingLTRB(
                                  top: 10.0,
                                  right: 40.0,
                                  left: 40.0,
                                  bottom: 10.0,
                                ),
                                Text(portfolio.name,
                                    style:
                                        Theme.of(context).textTheme.headline3),
                                Text(
                                  portfolio.stack,
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                const YMargin(10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: 'Linkedin'
                                          .image(
                                            size: 30,
                                          )
                                          .paddingLTRB(right: 5),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: 'Twitter'
                                          .image(
                                            size: 30,
                                          )
                                          .paddingLTRB(right: 5),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: 'Whatsapp'
                                          .image(
                                            size: 30,
                                          )
                                          .paddingLTRB(right: 5),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: 'Github2'.image(
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const VerticalDivider(),
                        Consumer<HomeProvider>(
                            builder: (context, value, child) {
                          return Expanded(
                            flex: 4,
                            child: value.currentIndex == 0
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Hi there,",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline3!
                                                  .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Image.asset(
                                              "assets/animations/wavey.gif",
                                              height: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "I'm ${portfolio.name}.",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      const YMargin(5),
                                      const YMargin(10),
                                      Text(
                                        "I am a Product Designer @ Yojonesy. I can help you design your product, develop your brand, or systematize your design flow.",
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                    ],
                                  )
                                : ListView(
                                    children: [
                                      Text(
                                        "Projects",
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4!
                                            .copyWith(
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ).paddingLTRB(
                                        bottom: 10,
                                        top: 10,
                                        left: 16,
                                      ),
                                      for (int i = 0; i < projects.length; i++)
                                        ProjectCard(
                                          index: i,
                                        ),
                                    ],
                                  ),
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
