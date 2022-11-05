import 'package:flutter/material.dart';
import 'package:portfolio/constant/helper/helper.dart';
import 'package:portfolio/modules/home/widgets/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/core.dart';
import '../../../shared/shared.dart';
import '../../../shared/web_view/web_view.dart';

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
                            AppLocalizations.of(context)!.greetings.length > 10
                                ? '${AppLocalizations.of(context)!.greetings.substring(0, 10)}...'
                                : AppLocalizations.of(context)!.greetings,
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.fade),
                          ),
                          Image.asset(
                            "assets/animations/wavey.gif",
                            height: 30,
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UIWebView(
                                title: 'LinkedIn',
                                url:
                                    'https://www.linkedin.com/in/iamdavidodejobi/',
                              ),
                            ),
                          );
                        },
                        child: 'Linkedin'
                            .image(
                              size: 30,
                            )
                            .paddingLTRB(right: 5),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UIWebView(
                                title: 'Twitter',
                                url: 'https://twitter.com/iamDavidOdejobi',
                              ),
                            ),
                          );
                        },
                        child: 'Twitter'
                            .image(
                              size: 30,
                            )
                            .paddingLTRB(right: 5),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UIWebView(
                                title: 'WhatsApp',
                                url:
                                    'https://api.whatsapp.com/message/E7GPNNX5PJKIH1?autoload=1&app_absent=0',
                              ),
                            ),
                          );
                        },
                        child: 'Whatsapp'
                            .image(
                              size: 30,
                            )
                            .paddingLTRB(right: 5),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UIWebView(
                                title: 'GitHub',
                                url: 'https://github.com/davidaodejobi',
                              ),
                            ),
                          );
                        },
                        child: 'Github2'.image(
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    AppLocalizations.of(context)!.im(portfolio.name),
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const YMargin(5),
                  const YMargin(10),
                  Text(
                    AppLocalizations.of(context)!.desc,
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
                AppLocalizations.of(context)!.project,
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
                      project: projects[i],
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
