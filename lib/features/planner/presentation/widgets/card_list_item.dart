import 'dart:io';
import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/card_edit_delete.dart';
import 'package:savings_fund_planner/features/planner/presentation/widgets/card_information.dart';
import 'package:savings_fund_planner/core/widgets/planner_card_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CardListItem extends StatelessWidget {
  const CardListItem(
      {super.key,
      required this.goal,
      required this.personHas,
      required this.personNeed,
      required this.progressLineValue,
      required this.progressLineColor,
      required this.cardColor,
      required this.index,
      this.remove,
      this.cardImage,
      required this.cardStore});
  final String goal;
  final double personHas;
  final double personNeed;
  final double progressLineValue;
  final Color progressLineColor;
  final Color cardColor;
  final int index;
  final VoidCallback? remove;
  final File? cardImage;
  final CardData cardStore;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showBarModalBottomSheet(
            expand: true,
            context: context,
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
            goal: goal,
            personHas: personHas,
            personNeed: personNeed,
            cardColor: cardColor,
            progressLineValue: progressLineValue,
            progressLineColor: progressLineColor,
            cardImage: cardImage,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: () {
                    showCupertinoModalBottomSheet(
                      expand: false,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return CardEditDelete();
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
