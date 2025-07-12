import 'package:flutter/material.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({super.key});

  @override
  _TabWidgetState createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  int activeTab = 0;

  final List<Map<String, dynamic>> tabs = [
    {'label': 'All', 'count': 12},
    {'label': 'Events', 'count': 5},
    {'label': 'Renewals', 'count': 3},
    {'label': 'Announcements', 'count': null},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      // color: Colors.amber,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: tabs.asMap().entries.map((entry) {
            int index = entry.key;
            Map<String, dynamic> tab = entry.value;
            bool isActive = activeTab == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: isActive ? Colors.blue : Colors.transparent,
                      width: 2,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      tab['label'],
                      style: TextStyle(
                        color: isActive ? Colors.blue : Colors.grey[600],
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (tab['count'] != null) ...[
                      SizedBox(width: 8),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          tab['count'].toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
