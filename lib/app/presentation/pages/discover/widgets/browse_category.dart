import 'package:cms/app/core/const/browse_categories.dart';
import 'package:flutter/material.dart';

class BrowseCategoriesSection extends StatelessWidget {
  final VoidCallback? onViewAll;
  final Function(String)? onCategorySelected;

  const BrowseCategoriesSection({
    super.key,
    this.onViewAll,
    this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: 16,
      ), // More control

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Browse Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              TextButton(
                onPressed: onViewAll,
                child: Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ), 
            ],
          ),

          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 16,
              mainAxisSpacing: 24,
              childAspectRatio: 0.8,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return GestureDetector(
                onTap: () =>
                    onCategorySelected?.call(category['name'] as String),
                child: Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: category['color'] as Color,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        category['icon'] as IconData,
                        color: Colors.grey[700],
                        size: 28,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      category['name'] as String,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
