import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedItemCard(
            icon: Icons.access_alarm,
            onPressed: () {},
          ),
          FeaturedItemCard(
            icon: Icons.accessibility,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturedItemCard extends StatelessWidget {
  const FeaturedItemCard({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding,
          bottom: defaultPadding * 2.5,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          size: 185,
        ),
      ),
    );
  }
}
