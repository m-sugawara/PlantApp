import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key,
    required this.title,
    required this.country,
    required this.price,
  });
  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headlineMedium!.merge(
                        const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                ),
                TextSpan(
                  text: country,
                  style: const TextStyle(
                    fontSize: 20,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.headlineSmall!.merge(
                  const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          )
        ],
      ),
    );
  }
}
