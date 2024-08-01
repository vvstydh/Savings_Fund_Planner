import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/store/card_data.dart';

class PlannerCardWidget extends StatelessWidget {
  const PlannerCardWidget({super.key, required this.cardStore});
  final CardData cardStore;

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Container(
              margin: const EdgeInsets.all(20),
              height: 250,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                    )
                  ],
                  borderRadius: BorderRadius.circular(45),
                  color: cardStore.cardColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 135,
                        margin: const EdgeInsets.fromLTRB(25, 15, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'I am saving for',
                                  style: theme.textTheme.labelLarge,
                                ),
                                Text(cardStore.goal)
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Money left',
                                  style: theme.textTheme.labelLarge,
                                ),
                                Text(
                                    '${cardStore.personNeed} - ${cardStore.personHas}')
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                              width: 150,
                              height: 150,
                              child: Image.asset('assets/images/noPhoto.png'))),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'I have',
                              style: theme.textTheme.labelMedium,
                            ),
                            Text(
                              cardStore.personHas,
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 165,
                          height: 15,
                          child: LinearProgressIndicator(
                            value: 1,
                            color: Color.fromARGB(255, 0, 186, 19),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'I need',
                              style: theme.textTheme.labelMedium,
                            ),
                            Text(
                              cardStore.personNeed,
                              style: theme.textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ));
  }
}
