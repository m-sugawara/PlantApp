import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: TextButton(
            style: const ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              backgroundColor: MaterialStatePropertyAll(
                AppColors.primary,
              ),
            ),
            child: const Text(
              "Buy Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: TextButton(
            child: const Text("Description"),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
