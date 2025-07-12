import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventSearchField extends StatefulWidget {
  final Function(String)? onChanged;
  final VoidCallback? onFilterPressed;

  const EventSearchField({super.key, this.onChanged, this.onFilterPressed});

  @override
  State<EventSearchField> createState() => _EventSearchFieldState();
}

class _EventSearchFieldState extends State<EventSearchField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: CupertinoSearchTextField(
        controller: _controller,
        placeholder: 'Search events, categories, locations...',
        style: TextStyle(fontSize: 16, color: Colors.black87),
        placeholderStyle: TextStyle(fontSize: 16, color: Colors.grey[500]),
        backgroundColor: Colors.grey[100],
        borderRadius: BorderRadius.circular(18),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        suffixIcon: Icon(Icons.tune, color: Colors.grey[600], size: 20),
        onChanged: widget.onChanged,
        onSubmitted: (value) {},
        suffixMode: OverlayVisibilityMode.always,
        prefixInsets: EdgeInsetsGeometry.only(left: 14),
        suffixInsets: EdgeInsetsGeometry.only(right: 14),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
