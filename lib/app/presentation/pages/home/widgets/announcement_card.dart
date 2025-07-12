import 'package:flutter/material.dart';

class AnnouncementCard extends StatelessWidget {
  const AnnouncementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      height: 90,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(21),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
          color: Color(0xffEFF6FF),
          borderRadius: BorderRadius.circular(21),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 33,
                      decoration: ShapeDecoration(
                        color: Colors.teal.withValues(alpha: 0.3),
                        shape: const StadiumBorder(),
                      ),
                      child: Icon(Icons.dangerous),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Office Closure Notice',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            style: TextStyle(fontSize: 14),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            'Our offices will be closed on July 5th for Eid celebrations.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [IconButton(onPressed: () {}, icon: Icon(Icons.close))],
            ),
          ],
        ),
      ),
    );
  }
}
