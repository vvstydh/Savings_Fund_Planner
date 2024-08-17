import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/widgets/planner_card_widget.dart';
import 'package:savings_fund_planner/features/planner/data/card_database.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/card_edit_delete.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/card_information.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CardListInprocessItem extends StatelessWidget {
  const CardListInprocessItem(
      {super.key,
      required this.index,
      required this.cardStore,
      required this.rootNavigatorKey,
      required this.cardDataBase,
      });

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
              return CardInformation(
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
              goal: cardStore.inProcess[index].goal,
              personHas: cardStore.inProcess[index].personHas,
              personNeed: cardStore.inProcess[index].personNeed,
              progressLineValue: cardStore.inProcess[index].progressLineValue,
              cardColorValueRed: cardStore.inProcess[index].cardColorValueRed,
              cardColorValueGreen: cardStore.inProcess[index].cardColorValueGreen,
              cardColorValueBlue: cardStore.inProcess[index].cardColorValueBlue,
              progressLineColorValueRed: cardStore.inProcess[index].progressLineColorValueRed,
              progressLineColorValueGreen: cardStore.inProcess[index].progressLineColorValueGreen,
              progressLineColorValueBlue: cardStore.inProcess[index].progressLineColorValueBlue,
              cardImagePath: cardStore.inProcess[index].cardImagePath),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {
                    showMaterialModalBottomSheet(
                        expand: true,
                        enableDrag: false,
                        context: rootNavigatorKey.currentContext!,
                        backgroundColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return CardEditDelete(
                            cardStore: cardStore,
                            index: index,
                            cardDataBase: cardDataBase,
                          );
                        });
                  },
                  icon: const Icon(
                    Icons.more_vert_rounded,
                    size: 25,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
