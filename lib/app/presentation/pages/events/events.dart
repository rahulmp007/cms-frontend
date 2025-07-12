import 'package:cms/app/core/const/app_colors.dart';
import 'package:cms/app/presentation/pages/events/widgets/event_category_filter.dart';
import 'package:cms/app/presentation/pages/events/widgets/event_filter_tabs.dart';
import 'package:cms/app/presentation/pages/events/widgets/events_list.dart';
import 'package:cms/app/presentation/pages/events/widgets/featured_event_card.dart';
import 'package:cms/app/presentation/shared/widgets/base_widget.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      titleText: 'Notifications',
      showLeading: true,
      showTrailing: true,
      color: Colors.green,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(child: SizedBox(height: 30)),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      EventFilterTabs(),
                      EventCategoryFilter(onCategoryChanged: (p0) {}),
                    ],
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 20)),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Featured Events",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('See all', style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: FeaturedEventCard(
                    category: 'Community',
                    title: 'Summer Community Festival',
                    date: 'June 30, 2025',
                    time: '10:00 AM',
                    imageUrl:
                        "https://images.unsplash.com/photo-1751013781844-fa6a78089e49?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8",
                    categoryColor: Colors.green,
                  ),
                ),
                EventsList(),
                SliverToBoxAdapter(child: SizedBox(height: 140)),
              ],
            ),
          ),

          Positioned(
            bottom: 60,
            right: 40,

            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, size: 40, color: AppColors.kWhite),
            ),
          ),
        ],
      ),
    );
  }
}
