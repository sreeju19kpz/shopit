import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopit/common/bloc/tab_destinations.dart';

class BottomTabBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const BottomTabBar({required this.navigationShell, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
        destinations:
            destinations
                .map(
                  (destination) => NavigationDestination(
                    icon: Icon(destination.icon),
                    label: destination.label,
                    selectedIcon: Icon(destination.icon, color: Colors.amber),
                  ),
                )
                .toList(),
      ),
    );
  }
}
