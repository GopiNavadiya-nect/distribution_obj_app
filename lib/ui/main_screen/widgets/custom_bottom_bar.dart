import 'package:distribution_obj_app/infrastructure/constant/color_constant.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTap;

  const CustomBottomBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(100),
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildItem(
            icon: Icons.home,
            label: "Home",
            color: selectedIndex == 0 ? ColorConstant.blue : ColorConstant.grey,
            onTap: () => onItemTap(0),
          ),
          _buildItem(
            icon: Icons.emoji_events,
            label: "Leaderboard",
            color: selectedIndex == 1 ? ColorConstant.blue : ColorConstant.grey,
            onTap: () => onItemTap(1),
          ),
          _buildItem(
            icon: Icons.check_circle,
            label: "Challenges",
            color: selectedIndex == 2 ? ColorConstant.orange : ColorConstant.grey,
            onTap: () => onItemTap(2),
          ),
          _buildItem(
            icon: Icons.card_giftcard,
            label: "Rewards",
            color: selectedIndex == 3 ? ColorConstant.green :ColorConstant.grey,
            onTap: () => onItemTap(3),
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
