// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:portfolio/constant/helper/helper.dart';
import 'package:portfolio/shared/responsive_builder.dart';

import '../../../core/core.dart';
import '../../../shared/web_view/web_view.dart';

class ProjectCard extends StatelessWidget {
  final int index;
  final ProjectModel project;
  const ProjectCard({
    Key? key,
    required this.index,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<AppTheme>(context);
    String preview = project.projectVideo;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(
          width: double.infinity,
          decoration: !ResponsiveBuilder.isTablet(context)
              ? BoxDecoration(
                  border: Border.all(
                      color: theme.isDarkTheme
                          ? Colors.white10.withAlpha(80)
                          : Colors.black12.withAlpha(80)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withAlpha(100),
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                  color: !ResponsiveBuilder.isTablet(context)
                      ? theme.isDarkTheme
                          ? Colors.white.withOpacity(0.1)
                          : Colors.black.withOpacity(0.2)
                      : Colors.transparent,
                )
              : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                height: 200,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/${project.projectImage}.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black.withOpacity(0.01),
                                Colors.black.withOpacity(0.7),
                              ],
                            ),
                          ),
                          child: Text(
                            project.projectName,
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ),
                      if (project.projectVideo.isNotEmpty)
                        Positioned(
                          top: 10,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UIWebView(
                                    title: 'Project Preview',
                                    url: project.projectVideo,
                                  ),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.video_collection,
                              color: Theme.of(context).iconTheme.color,
                            ).glassmorphicx(),
                          ),
                        ),
                      if (project.projectGitHubUrl.isNotEmpty)
                        Positioned(
                          top: project.projectVideo.isEmpty ? 10 : 50,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UIWebView(
                                    title: 'Project GitHub',
                                    url: project.projectGitHubUrl,
                                  ),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.link,
                              color: Theme.of(context).iconTheme.color,
                            ).glassmorphicx(),
                          ),
                        )
                    ],
                  ),
                ),
              ),
              Text(project.projectDescription,
                      style: Theme.of(context).textTheme.headline6)
                  .paddingLTRB(
                bottom: 10,
                right: 10,
                left: 16,
              ),
              Wrap(
                children: [
                  for (var i = 0; i < project.projectTechStack.length; i++)
                    Container(
                      margin: const EdgeInsets.only(
                        right: 8,
                      ),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withAlpha(100),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        project.projectTechStack[i],
                        style:
                            Theme.of(context).textTheme.headline6!.copyWith(),
                      ),
                    ).paddingLTRB(
                      bottom: 10,
                    ),
                ],
              ).paddingLTRB(
                bottom: 10,
                left: 16,
              ),
              if (ResponsiveBuilder.isTablet(context) && index != 3)
                const Divider().paddingLTRB(
                  bottom: 10,
                  right: 16,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
