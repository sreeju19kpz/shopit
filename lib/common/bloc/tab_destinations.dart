import 'package:flutter/material.dart';
import 'package:shopit/core/configs/theme/app_strings.dart';

class TabDestination {
  final String label;
  final IconData icon;
  final IconData selectedIcon;
  const TabDestination({
    required this.label,
    required this.icon,
    required this.selectedIcon,
  });
}

const destinations = <TabDestination>[
  TabDestination(
    label: AppStrings.home,
    icon: Icons.home_outlined,
    selectedIcon: Icons.home,
  ),
  TabDestination(
    label: AppStrings.explore,
    icon: Icons.grid_view_outlined,
    selectedIcon: Icons.grid_view_rounded,
  ),
];
