import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final bool isSelected;

  const CategoryButton({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? color : Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 7,
            blurRadius: 12,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: isSelected ? color : Colors.white,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black87),
          ),
        ],
      ),
    );
  }
}
