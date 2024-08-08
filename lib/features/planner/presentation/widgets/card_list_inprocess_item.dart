import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/card_edit_delete.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/card_information.dart';
import 'package:savings_fund_planner/core/widgets/planner_card_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CardListInprocessItem extends StatelessWidget {
  const CardListInprocessItem(
      {super.key,
      required this.index,
      required this.cardStore,
      required this.rootNavigatorKey});

  final int index;
  final CardData cardStore;
  final GlobalKey<NavigatorState> rootNavigatorKey;

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
            cardColor: cardStore.inProcess[index].cardColor,
            progressLineValue: cardStore.inProcess[index].progressLineValue,
            progressLineColor: cardStore.inProcess[index].progressLineColor,
            cardImage: cardStore.inProcess[index].cardImage,
          ),
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
