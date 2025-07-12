import 'package:flutter/material.dart';

class EventCategoryFilter extends StatefulWidget {
  final Function(String) onCategoryChanged;

  const EventCategoryFilter({super.key, required this.onCategoryChanged});

  @override
  State<EventCategoryFilter> createState() => _EventCategoryFilterState();
}

class _EventCategoryFilterState extends State<EventCategoryFilter> {
  String _selectedCategory = 'Community';

  final List<Map<String, dynamic>> _categories = [
    {
      'name': 'Community',
      'icon': Icons.groups,
      'color': Colors.green[100],
      'iconColor': Colors.blue,
    },
    {
      'name': 'Educational',
      'icon': Icons.menu_book,
      'color': Colors.green[100],
      'iconColor': Colors.green,
    },
    {
      'name': 'Sports',
      'icon': Icons.sports_basketball,
      'color': Colors.orange[100],
      'iconColor': Colors.orange,
    },
    {
      'name': 'Cultural',
      'icon': Icons.palette,
      'color': Colors.purple[100],
      'iconColor': Colors.purple,
    },
    {
      'name': 'Family',
      'icon': Icons.family_restroom,
      'color': Colors.pink[100],
      'iconColor': Colors.pink,
    },
  ];

  void _onCategorySelected(String category) {
    if (_selectedCategory != category) {
      setState(() {
        _selectedCategory = category;
      });
      widget.onCategoryChanged(category);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _categories.map((category) {
          final isSelected = _selectedCategory == category['name'];

          return GestureDetector(
            onTap: () => _onCategorySelected(category['name']),
            child: Column(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: category['color'],
                    shape: BoxShape.circle,
                    border: isSelected
                        ? Border.all(color: category['iconColor'], width: 2)
                        : null,
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: category['iconColor'].withOpacity(0.3),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : null,
                  ),
                  child: Icon(
                    category['icon'],
                    color: category['iconColor'],
                    size: 22,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  category['name'],
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                    color: isSelected
                        ? category['iconColor']
                        : Colors.grey[600],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
