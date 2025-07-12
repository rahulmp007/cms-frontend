
import 'package:cms/app/core/const/app_colors.dart';
import 'package:cms/app/presentation/pages/notifications/notifications.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget {
  final bool showLeading;
  final bool showTrailing;
  final bool showTitle;
  final String? titleText;
  final Color appBarColor;

  const CommonAppBar({
    super.key,
    this.showLeading = true,
    this.showTrailing = true,
    this.showTitle = true,
    this.titleText,
    required this.appBarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      child: Row(
        children: [
          if (showLeading)
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: AppColors.kBlack,
                  size: 25,
                  opticalSize: 30,
                  weight: 500,
                ),
              ),
            )
          else
            Text(
              'Hello, Ahmed!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.kWhite,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

          if (showTitle && showLeading && showTrailing)
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  titleText ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: AppColors.kWhite,
                  ),
                ),
              ),
            )
          else if (showTitle && showLeading && !showTrailing)
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  titleText ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: AppColors.kWhite,
                  ),
                ),
              ),
            )
          else if (!showLeading && showTrailing)
            Spacer(),

          if (showTrailing)
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Notifications(),
                        ),
                      ),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black,
                        size: 28,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 4,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: BoxConstraints(minWidth: 20, minHeight: 20),
                      child: Text(
                        '4',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
