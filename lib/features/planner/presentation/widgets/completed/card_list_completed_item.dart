import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/core/widgets/planner_card_widget.dart';
import 'package:savings_fund_planner/features/planner/data/card_database.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/card_edit_delete.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/completed/completed_card_information.dart';

class CardListCompletedItem extends StatelessWidget {
  const CardListCompletedItem(
      {super.key,
      required this.index,
      required this.cardStore,
      required this.rootNavigatorKey,
      required this.cardDataBase});

  final int index;
  final CardData cardStore;
  final GlobalKey<NavigatorState> rootNavigatorKey;
  final CardDataBase cardDataBase;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showBarModalBottomSheet(
            expand: true,
            context: rootNavigatorKey.currentContext!,
            backgroundColor: Colors.transparent,
            builder: (BuildContext context) {
              return CompletedCardInformation(
                cardStore: cardStore,
                index: index,
                cardDataBase: cardDataBase,
              );
            });
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          PlannerCardWidget(
              goal: cardStore.completed[index].goal,
              personHas: cardStore.completed[index].personHas,
              personNeed: cardStore.completed[index].personNeed,
              progressLineValue: cardStore.completed[index].progressLineValue,
              cardColorValueRed: cardStore.completed[index].cardColorValueRed,
              cardColorValueGreen:
                  cardStore.completed[index].cardColorValueGreen,
              cardColorValueBlue: cardStore.completed[index].cardColorValueBlue,
              progressLineColorValueRed:
                  cardStore.completed[index].progressLineColorValueRed,
              progressLineColorValueGreen:
                  cardStore.completed[index].progressLineColorValueGreen,
              progressLineColorValueBlue:
                  cardStore.completed[index].progressLineColorValueBlue,
              cardImagePath: cardStore.completed[index].cardImagePath),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text(
                                'Delete card',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              content: const Text(
                                'Are you sure you want to delete this card? Your action cannot be undone',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Cancel',
                                      style: theme.textTheme.titleLarge,
                                    )),
                                TextButton(
                                    onPressed: () {
                                      cardDataBase.deleteCompletedCard(
                                          cardStore.completed[index].id);
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Delete',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 255, 0, 0),
                                      ),
                                    ))
                              ],
                            ));
                  },
                  icon: const Icon(
                    Icons.close_rounded,
                    size: 25,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
