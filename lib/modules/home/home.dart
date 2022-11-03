import 'package:flutter/material.dart';
import 'package:portfolio/core/models/portfolio_model.dart';

import 'widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SilverPersistentHeader()
          SliverPersistentHeader(
            delegate: AppbarAnimation(),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                child: Text(
                  portfolio.description,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
