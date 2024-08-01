import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/store/card_data.dart';

class ChooseColorRow extends StatelessWidget {
  const ChooseColorRow({super.key, required this.cardStore});
  final CardData cardStore;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(45)),
              child: Observer(
                builder: (_) => IconButton(
                    onPressed: () {
                      cardStore.changeColor(0);
                    },
                    icon: cardStore.colorIndex == 0
                        ? const Icon(Icons.check)
                        : const Icon(null)),
              )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: theme.colorScheme.secondary,
              ),
              child: Observer(
                builder: (_) => IconButton(
                  onPressed: () {
                    cardStore.changeColor(1);
                  },
                  icon: cardStore.colorIndex == 1
                      ? const Icon(
                          Icons.check,
                          color: Colors.white,
                        )
                      : const Icon(null),
                ),
              )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: const Color.fromARGB(255, 245, 50, 249),
              ),
              child: Observer(
                builder: (_) => IconButton(
                    onPressed: () {
                      cardStore.changeColor(2);
                    },
                    icon: cardStore.colorIndex == 2
                        ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        : const Icon(null)),
              )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: const Color.fromARGB(255, 255, 231, 111),
              ),
              child: Observer(
                builder: (_) => IconButton(
                    onPressed: () {
                      cardStore.changeColor(3);
                    },
                    icon: cardStore.colorIndex == 3
                        ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        : const Icon(null)),
              )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: const Color.fromARGB(255, 249, 110, 50),
              ),
              child: Observer(
                builder: (_) => IconButton(
                    onPressed: () {
                      cardStore.changeColor(4);
                    },
                    icon: cardStore.colorIndex == 4
                        ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        : const Icon(null)),
              ))
        ],
      ),
    );
  }
}
