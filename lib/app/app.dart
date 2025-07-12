import 'package:cms/app/presentation/pages/membership_renewal/membership_renew.dart';
import 'package:cms/app/presentation/pages/notifications/notifications.dart';
import 'package:cms/app/presentation/pages/payment/payment.dart';
import 'package:cms/app/presentation/shared/widgets/common_nav_bar.dart';
import 'package:flutter/material.dart';

class Cms extends StatelessWidget {
  const Cms({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: CommonNavBar());
  }
}
