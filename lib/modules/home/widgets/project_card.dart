import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constant/helper/helper.dart';

class ProjectCard extends StatelessWidget {
  final int index;
  const ProjectCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white10.withAlpha(80)),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withAlpha(100),
                blurRadius: 10.0,
                spreadRadius: 0.0,
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: index.isEven
                  ? [
                      const Color(0x0ff4f4f8).withOpacity(0.8),
                      const Color(0x00b3cde0).withOpacity(0.8),
                    ]
                  : [
                      const Color(0x00b3cde0).withOpacity(0.8),
                      const Color(0x0ff4f4f8).withOpacity(0.8),
                    ],
            ),
          ),
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
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://picsum.photos/200/300',
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
                            "Project Name",
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Icon(
                          Icons.video_collection,
                          color: Theme.of(context).iconTheme.color,
                        ).glassmorphicx(),
                      ),
                      Positioned(
                        top: 50,
                        right: 10,
                        child: Icon(
                          Icons.link,
                          color: Theme.of(context).iconTheme.color,
                        ).glassmorphicx(),
                      )
                    ],
                  ),
                ),
              ),
              Text("One senence Descrpton of what it is and what it is for.",
                      style: Theme.of(context).textTheme.headline6)
                  .paddingLTRB(
                bottom: 10,
                left: 16,
              ),
              Wrap(
                children: [
                  for (var i = 0; i < 5; i++)
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
                        "Flutter",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.black,
                            ),
                      ),
                    ),
                ],
              ).paddingLTRB(
                bottom: 10,
                left: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
