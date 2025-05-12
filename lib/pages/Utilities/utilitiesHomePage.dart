import 'package:flutter/material.dart';
import 'package:health_app/constan.dart';
import 'package:health_app/pages/Utilities/WaterCalculator/WaterCalculator.dart';
import 'package:health_app/pages/Utilities/proteinCalculator/proteinCalculator_page.dart';
import 'package:health_app/widgets/custom_UtilitiesContainer.dart';

class Utilitieshomepage extends StatelessWidget {
  const Utilitieshomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomUtilitiesContainer(
                  image: 'assets/image/Rectangle 30 copy.png',
                  text: '    BMI\nCalculator',

                  onTap: () {},
                ),
                CustomUtilitiesContainer(
                  image: 'assets/image/fluent-emoji_cut-of-meat.png',
                  text: '  protein\nCalculator',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProteinCalculator(),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomUtilitiesContainer(
                  image: 'assets/image/material-symbols_water-medium.png',
                  text: '    Water\n Calculate',

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Watercalculator(),
                      ),
                    );
                  },
                ),
                CustomUtilitiesContainer(
                  image: 'assets/image/fluent-mdl2_calories.png',
                  text: '  Calories\nCalculator',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
