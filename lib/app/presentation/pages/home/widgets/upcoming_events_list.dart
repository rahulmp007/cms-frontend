import 'package:cms/app/presentation/pages/home/widgets/upcoming_event_card.dart';
import 'package:flutter/material.dart';

class UpcomingEventsList extends StatelessWidget {
  const UpcomingEventsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      itemCount: 5,
      itemBuilder: (context, index) {
        return UpcomingEventCard(title: '', date: DateTime.now(), location: '');
      },
    );
  }
}
