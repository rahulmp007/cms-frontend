import 'package:cms/app/core/const/even_info_constants.dart';
import 'package:cms/app/data/model/event_info.dart';
import 'package:cms/app/presentation/pages/events/widgets/event_details_card.dart';
import 'package:flutter/material.dart';

class EventsList extends StatelessWidget {
  const EventsList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = _buildEventItems();

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => items[index],
        childCount: items.length,
      ),
    );
  }

  List<Widget> _buildEventItems() {
    // Group events by section directly
    Map<String, List<EventInfoModel>> groupedEvents = {};
    for (var event in eventsList) {
      if (!groupedEvents.containsKey(event.section)) {
        groupedEvents[event.section] = [];
      }
      groupedEvents[event.section]!.add(event);
    }

    final sections = ['Today\'s Events', 'Upcoming Events'];
    List<Widget> items = [];

    for (int sectionIndex = 0; sectionIndex < sections.length; sectionIndex++) {
      final section = sections[sectionIndex];

      if (groupedEvents.containsKey(section)) {
        // Section header
        items.add(
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: sectionIndex == 0 ? 16 : 0,
              bottom: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  section,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                if (section == "Upcoming Events")
                  TextButton(
                    onPressed: () => print("See all upcoming events"),
                    child: Text(
                      "See all",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );

        // Events for this section
        for (var event in groupedEvents[section]!) {
          items.add(
            EventDetailCard(
              category: event.category,
              title: event.title,
              time: '${event.date}, ${event.time}',
              location: '${event.location}, ${event.distance}',
              attendeeText: event.attendeeInfo,
              imageUrl: event.imageUrl,
              categoryColor: event.categoryColor,
              isFull: event.isFull,
              onClick: event.isRSVPEnabled
                  ? () {
                      print('RSVP for ${event.title}');
                    }
                  : null,
            ),
          );
        }

        // Add space between sections
        if (sectionIndex < sections.length - 1) {
          items.add(SizedBox(height: 24));
        }
      }
    }

    return items;
  }
}
