import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constant/helper/helper.dart';
import 'package:provider/provider.dart';

import '../../../core/core.dart';
import '../../../shared/margin.dart';

const _maxHeaderExtent = 320.0;
const _minHeaderExtent = 100.0;

const _maxImageSize = 180.0;
const _minImageSize = 60.0;

class AppbarAnimation extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final percent = shrinkOffset / -_maxHeaderExtent;
    final size = MediaQuery.of(context).size;
    final currentImageSize =
        (_maxImageSize * (percent + 1)).clamp(_minImageSize, _maxImageSize);
    final theme = Provider.of<AppTheme>(context);
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: theme.isDarkTheme
                  ? [
                      const Color(0xFF851e3e).withOpacity(0.5),
                      const Color(0xFF091C32).withOpacity(0.8),
                    ]
                  : [
                      const Color(0x00b3cde0).withOpacity(0.8),
                      const Color(0x0ff4f4f8).withOpacity(0.8),
                    ],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 50.0,
                  left: size.width / 4,
                  child: Column(
                    children: [
                      Text(
                        portfolio.name,
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              letterSpacing: 2.0 * (percent + 0.3),
                            ),
                      ),
                      Text(
                        portfolio.stack,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  )),
              Positioned(
                bottom: 20.0,
                left: 150.0,
                height: 180,
                child: Opacity(
                  opacity: percent + 1,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                          child: Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white10.withAlpha(80)),
                              borderRadius: BorderRadius.circular(10),
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
                                Column(
                                  children: [
                                    Expanded(
                                      child: 'dart'.image(
                                        size: 65,
                                      ),
                                    ),
                                    const YMargin(20),
                                    const Expanded(
                                      child: FlutterLogo(
                                        size: 65,
                                      ),
                                    ),
                                  ],
                                ).paddingVertical(),
                                const XMargin(5),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: 'javascript'
                                          .image(
                                            size: 40,
                                          )
                                          .paddingLTRB(top: 5),
                                    ),
                                    Expanded(
                                      child: 'html5'
                                          .image(
                                            size: 40,
                                          )
                                          .paddingLTRB(top: 5),
                                    ),
                                    Expanded(
                                      child: 'css3'
                                          .image(
                                            size: 40,
                                          )
                                          .paddingLTRB(top: 5),
                                    ),
                                    Expanded(
                                      child: 'googlecloud'
                                          .image(
                                            size: 40,
                                          )
                                          .paddingLTRB(top: 5),
                                    ),
                                  ],
                                ).paddingVertical(),
                                const XMargin(5),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      'github'
                                          .image(
                                            size: 30,
                                            fit: BoxFit.scaleDown,
                                          )
                                          .paddingLTRB(top: 5),
                                      'vscode'
                                          .image(
                                            size: 30,
                                            fit: BoxFit.scaleDown,
                                          )
                                          .paddingLTRB(top: 5),
                                      'androidstudio'
                                          .image(
                                            size: 30,
                                            fit: BoxFit.scaleDown,
                                          )
                                          .paddingLTRB(top: 5),
                                    ],
                                  ).paddingLTRB(),
                                )
                              ],
                            ).paddingLeft(50),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 35.0,
                height: currentImageSize,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    portfolio.image,
                    fit: BoxFit.cover,
                  ),
                ).paddingLTRB(
                  right: 10.0,
                  bottom: 10.0,
                  top: 10.0,
                ),
              ),
              Consumer<AppTheme>(builder: (context, theme, child) {
                return Positioned(
                  top: 45.0,
                  right: 5,
                  child: IconButton(
                    icon: Icon(
                      theme.isDarkTheme ? Icons.wb_sunny : Icons.nightlight,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onPressed: () => theme.toggleTheme(),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => _maxHeaderExtent;

  @override
  double get minExtent => _minHeaderExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
