import 'package:cms/app/presentation/pages/notifications/widgets/notification_list.dart';
import 'package:cms/app/presentation/pages/notifications/widgets/tab_widget.dart';
import 'package:cms/app/presentation/shared/widgets/base_widget.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseWidget(
        color: Colors.green,
        titleText: "Notifications",
        showLeading: true,
        showTrailing: true,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(child: SizedBox(height: 20)),

            SliverToBoxAdapter(child: TabWidget()),
            SliverToBoxAdapter(child: SizedBox(height: 15)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Mark all as read',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            NotificationsList(),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
          ],
        ),
      ),
    );
  }
}
