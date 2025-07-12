import 'package:cms/app/core/const/app_colors.dart';
import 'package:cms/app/presentation/pages/discover/widgets/browse_category.dart';
import 'package:cms/app/presentation/pages/discover/widgets/discover_textfield.dart';
import 'package:cms/app/presentation/pages/discover/widgets/weekend_picks.dart';
import 'package:cms/app/presentation/shared/widgets/base_widget.dart';
import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      titleText: 'Discover',
      showLeading: true,
      showTrailing: true,
      color: Colors.green,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: EventSearchField(
                onChanged: (value) {},
                onFilterPressed: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: AppColors.kColorLight),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BrowseCategoriesSection(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: WeekendPicks(),
            ),
          ),
        ],
      ),
    );
  }
}
