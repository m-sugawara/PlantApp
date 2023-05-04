import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: defaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.only(
            left: defaultPadding,
            right: defaultPadding,
            bottom: 36 + defaultPadding,
          ),
          height: size.height * 0.2 - 27,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Hi Uishopy!',
                style: Theme.of(context).textTheme.headlineSmall!.merge(
                      const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
              ),
              const Spacer(),
              const Icon(
                Icons.star_outlined,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: AppColors.primary.withOpacity(0.23),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  color: AppColors.primary.withOpacity(0.5),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                suffixIcon: const Icon(Icons.search),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
