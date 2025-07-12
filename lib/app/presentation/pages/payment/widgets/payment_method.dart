import 'package:cms/app/core/const/app_colors.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 80,
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.kColorLight),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 14,
              child: Row(
                children: [
                  CircleAvatar(radius: 20),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Visa ending in 4582',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text('Expires 08/2026', style: TextStyle(fontSize: 10)),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Radio.adaptive(
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
