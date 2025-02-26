import 'package:flutter/material.dart';

class TabDestination {
  final String label;
  final IconData icon;
  const TabDestination({required this.label, required this.icon});
}

const destinations = <TabDestination>[
  TabDestination(label: "home", icon: Icons.abc_outlined),
  TabDestination(label: "home", icon: Icons.abc_outlined),
];
