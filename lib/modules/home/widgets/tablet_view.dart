import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constant/helper/helper.dart';
import 'package:portfolio/modules/home/view_model/home_provider.dart';
import 'package:portfolio/modules/home/widgets/language_selector.dart';
import 'package:portfolio/modules/home/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/core.dart';
import '../../../shared/shared.dart';
import '../../../shared/web_view/web_view.dart';

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
                child: Column(
                  //TODO: need to fix some padding issues here
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizedBox(height: 50),
                    const LanguageSelector(),
                    Consumer<AppTheme>(builder: (context, theme, child) {
                      return IconButton(
                        icon: Icon(
                          theme.isDarkTheme ? Icons.wb_sunny : Icons.nightlight,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        onPressed: () => theme.toggleTheme(),
                      );
                    }),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            // height: 20,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                              ),
                              border: Border.all(
                                color: Theme.of(context).iconTheme.color!,
                                width: 1,
                              ),
                            ),
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
                          Container(
                            // height: 20,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                              ),
                              border: Border.all(
                                color: Theme.of(context).iconTheme.color!,
                                width: 1,
                              ),
                            ),
                            child: InkWell(
                              onTap: () {
                                value.changeIndex(1);
                              },
                              child: Center(
                                child: VerticalText(
                                  AppLocalizations.of(context)!.project,
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
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
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
                                  AppLocalizations.of(context)!.title,
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                const YMargin(10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const UIWebView(
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
                                            builder: (context) =>
                                                const UIWebView(
                                              title: 'Twitter',
                                              url:
                                                  'https://twitter.com/iamDavidOdejobi',
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
                                            builder: (context) =>
                                                const UIWebView(
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
                                            builder: (context) =>
                                                const UIWebView(
                                              title: 'GitHub',
                                              url:
                                                  'https://github.com/davidaodejobi',
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
                                              AppLocalizations.of(context)!
                                                  .greetings,
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
                                        AppLocalizations.of(context)!
                                            .im(portfolio.name),
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
                                        AppLocalizations.of(context)!.desc,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ).paddingLTRB(
                                        right: 10,
                                      ),
                                    ],
                                  )
                                : ListView(
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.project,
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
                                          project: projects[i],
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
