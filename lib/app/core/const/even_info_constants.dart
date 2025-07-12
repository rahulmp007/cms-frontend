import 'package:cms/app/data/model/event_info.dart';
import 'package:flutter/material.dart';

final List<EventInfoModel> eventsList = [
  EventInfoModel(
    title: "Advanced JavaScript Workshop",
    category: "Educational",
    date: "Today",
    time: "2:00 PM - 5:00 PM",
    location: "Tech Hub",
    distance: "1.2 miles away",
    attendeeInfo: "JE KLMN +18 going",
    imageUrl:
        "https://images.unsplash.com/photo-1751013781844-fa6a78089e49?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8",
    categoryColor: Colors.blue,
    isRSVPEnabled: true,
    section: "Today's Events",
  ),
  EventInfoModel(
    title: "Morning Yoga in the Park",
    category: "Wellness",
    date: "Today",
    time: "7:00 AM - 8:30 AM",
    location: "Central Park",
    distance: "0.5 miles away",
    attendeeInfo: "ES RT +15 going",
    imageUrl:
        "https://images.unsplash.com/photo-1751013781844-fa6a78089e49?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8",
    categoryColor: Colors.green,
    isRSVPEnabled: false,
    section: "Today's Events",
    isFull: true,
  ),
  EventInfoModel(
    title: "Modern Art Exhibition Opening",
    category: "Cultural",
    date: "Today",
    time: "6:00 PM - 9:00 PM",
    location: "City Gallery",
    distance: "2.8 miles away",
    attendeeInfo: "AG BE +25 going",
    imageUrl:
        "https://images.unsplash.com/photo-1751013781844-fa6a78089e49?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8",
    categoryColor: Colors.purple,
    isRSVPEnabled: true,
    section: "Today's Events",
  ),

  EventInfoModel(
    title: "Summer Music Festival",
    category: "Entertainment",
    date: "July 2, 2025",
    time: "4:00 PM",
    location: "Riverside Park",
    distance: "3.2 miles away",
    attendeeInfo: "U KL +45 going",
    imageUrl:
        "https://images.unsplash.com/photo-1751013781844-fa6a78089e49?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8",
    categoryColor: Colors.red,
    isRSVPEnabled: true,
    section: "Upcoming Events",
  ),
  EventInfoModel(
    title: "International Food Festival",
    category: "Food & Drink",
    date: "July 5, 2025",
    time: "11:00 AM",
    location: "Downtown Plaza",
    distance: "1.8 miles away",
    attendeeInfo: "MN QR +32 going",
    imageUrl:
        "https://images.unsplash.com/photo-1751013781844-fa6a78089e49?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzfHx8ZW58MHx8fHx8",
    categoryColor: Colors.orange,
    isRSVPEnabled: true,
    section: "Upcoming Events",
  ),
];
