// ignore_for_file: must_be_immutable

import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/styled_button.dart';
import 'package:flutter/material.dart';

class CoffeePref extends StatefulWidget {
  const CoffeePref({super.key});

  @override
  State<CoffeePref> createState() => _CoffeePrefState();
}

class _CoffeePrefState extends State<CoffeePref> {
  int strength = 0;

  int sugar = 0;

  int changingStrength() {
    strength = strength < 5 ? strength + 1 : 1;
    return strength.toInt();
  }

  int changingSugar() {
    sugar = sugar < 5 ? sugar + 1 : 0;
    return sugar.toInt();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          const StyledBodyText('Strength: '),
          for (int i = 0; i < strength; i++)
            Image.asset(
              'assets/img/coffee_bean.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
          const Expanded(
            child: SizedBox(),
          ),
          StyledButton(
            onPressed: () {
              setState(() {
                changingStrength();
              });
            },
            child: const Text('+'),
          ),
        ],
      ),
      Row(
        children: [
          const StyledBodyText('Sugar: '),
          if (sugar == 0) const StyledBodyText('No Sugar...'),
          for (int j = 0; j < sugar; j++)
            Image.asset(
              'assets/img/sugar_cube.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
          const Expanded(
            child: SizedBox(),
          ),
          StyledButton(
            onPressed: () {
              setState(() {
                changingSugar();
              });
            },
            child: const Text('+'),
          ),
        ],
      )
    ]);
  }
}
