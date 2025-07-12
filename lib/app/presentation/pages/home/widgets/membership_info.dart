import 'package:flutter/material.dart';

class MembershipInfo extends StatelessWidget {
  const MembershipInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.only(left: 18, right: 18, top: 18),
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        // color: Colors.green,
        gradient: LinearGradient(
          colors: [
            Color(0xFF4CAF50), // Green
            Color(0xFF26C6DA), // Cyan
            Color(0xFF2196F3), // Blue
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.6, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),

      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        CircleAvatar(radius: 20),
                        SizedBox(width: 8),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed Al-Mansour',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'ID AMS-2025-7842',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 18,
                        right: 18,
                        top: 6,
                        bottom: 6,
                      ),
                      decoration: ShapeDecoration(
                        color: Colors.white10,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Premium',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Membership valid until',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '28 June 2026',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        Container(
                          padding: EdgeInsets.only(
                            left: 18,
                            right: 18,
                            top: 4,
                            bottom: 4,
                          ),
                          decoration: ShapeDecoration(
                            color: Colors.green,
                            shape: const StadiumBorder(),
                          ),
                          child: const Text(
                            'Active',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      height: 60,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Icon(Icons.qr_code_2_rounded, size: 50),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tap to view full details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  decorationColor: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
