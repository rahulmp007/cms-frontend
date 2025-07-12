import 'package:cms/app/core/const/app_colors.dart';
import 'package:flutter/material.dart';

class EventFilterTabs extends StatelessWidget {
  const EventFilterTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,

      child: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.kWhite,
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black54,
                tabs: const [
                  Tab(text: 'All'),
                  Tab(text: 'Upcoming'),
                  Tab(text: 'Past'),
                  Tab(text: 'My Events'),
                ],
              ),
            ),
            // const Expanded(
            //   child: TabBarView(
            //     children: [Center(), Center(), Center(), Center()],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
