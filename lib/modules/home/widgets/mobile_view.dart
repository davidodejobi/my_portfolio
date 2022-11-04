import 'package:flutter/material.dart';
import 'package:portfolio/constant/helper/helper.dart';
import 'package:portfolio/modules/home/widgets/widgets.dart';

import '../../../core/core.dart';
import '../../../shared/shared.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          delegate: AppbarAnimation(),
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hi there,",
                            style:
                                Theme.of(context).textTheme.headline3!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Image.asset(
                            "assets/animations/wavey.gif",
                            height: 30,
                          ),
                        ],
                      ),
                      const Spacer(),
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
                  Text(
                    "I'm ${portfolio.name}.",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const YMargin(5),
                  const YMargin(10),
                  Text(
                    "I am a Product Designer @ Yojonesy. I can help you design your product, develop your brand, or systematize your design flow.",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ).paddingLTRB(
                bottom: 20,
                right: 16,
                left: 16,
                top: 16,
              ),
              Text(
                "Projects",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ).paddingLTRB(
                bottom: 10,
                left: 16,
              ),
              Column(
                children: [
                  for (int i = 0; i < projects.length; i++)
                    ProjectCard(
                      index: i,
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
