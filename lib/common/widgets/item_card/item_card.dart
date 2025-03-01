import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String id;
  const ItemCard({
    required this.id,
    required this.imgUrl,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
