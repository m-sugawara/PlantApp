import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/icon_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: defaultPadding * 3),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back),
                        ),
                      ),
                      const Spacer(),
                      const IconCard(icon: Icons.sunny),
                      const IconCard(icon: Icons.water),
                      const IconCard(icon: Icons.water_drop),
                      const IconCard(icon: Icons.waterfall_chart),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.primary.withAlpha(100),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: AppColors.primary.withOpacity(0.29),
                    ),
                  ],
                ),
                width: size.width * 0.75,
                height: size.height * 0.8,
                child: Icon(
                  Icons.place_rounded,
                  size: size.width * 0.75,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
