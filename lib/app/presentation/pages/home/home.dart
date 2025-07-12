import 'package:cms/app/presentation/pages/home/widgets/announcement_card.dart';
import 'package:cms/app/presentation/pages/home/widgets/membership_info.dart';
import 'package:cms/app/presentation/pages/home/widgets/quick_action_card.dart';
import 'package:cms/app/presentation/pages/home/widgets/upcoming_event_card.dart';
import 'package:cms/app/presentation/shared/widgets/base_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      color: Colors.blue,
      showLeading: false,
      showTrailing: true,
      titleText: "Hello, Ahmed!",
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: MembershipInfo()),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    "Announcements",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),

          SliverToBoxAdapter(
            child: Column(
              children: [
                AnnouncementCard(),
                SizedBox(height: 10),
                AnnouncementCard(),
                SizedBox(height: 10),
                AnnouncementCard(),
              ],
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Events",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                padding: EdgeInsets.only(left: 16, right: 16),
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 280,
                    child: UpcomingEventCard(
                      title: 'title',
                      date: DateTime.now(),
                      location: 'location',
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: QuickActions(
              title: 'Quick Actions',
              actions: [
                QuickActionItems.renewMembership,
                QuickActionItems.viewBenefits,
                QuickActionItems.donate,
                QuickActionItems.events,
              ],
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
        ],
      ),
    );
  }
}
