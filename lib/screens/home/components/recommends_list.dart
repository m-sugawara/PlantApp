import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class RecommendsList extends StatelessWidget {
  const RecommendsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            icon: Icons.palette_outlined,
            title: "Samantha",
            country: "Russia",
            price: 440,
            onPressed: () {},
          ),
          RecommendPlantCard(
            icon: Icons.palette_outlined,
            title: "Samantha",
            country: "Russia",
            price: 440,
            onPressed: () {},
          ),
          RecommendPlantCard(
            icon: Icons.palette_outlined,
            title: "Samantha",
            country: "Russia",
            price: 440,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    super.key,
    required this.icon,
    required this.title,
    required this.country,
    required this.price,
    required this.onPressed,
  });
  final IconData icon;
  final String title, country;
  final int price;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.primary.withAlpha(100),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Icon(
              icon,
              size: size.width * 0.4,
            ),
          ),
          GestureDetector(
            onTap: onPressed,
            child: Container(
              padding: const EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: AppColors.primary.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .merge(TextStyle(
                                color: AppColors.primary.withOpacity(0.5),
                              )),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .merge(const TextStyle(color: AppColors.primary)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
