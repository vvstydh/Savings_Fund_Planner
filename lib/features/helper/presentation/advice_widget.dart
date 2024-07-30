import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/features/helper/presentation/helper_mobx.dart';

class AdviceWidget extends StatelessWidget {
  const AdviceWidget(
      {super.key,
      required this.title,
      required this.titleText,
      required this.index,
      required this.functions});
  final String title;
  final String titleText;
  final int index;
  final HelperMobX functions;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Observer(
            builder: (_) => AnimatedContainer(
                duration: const Duration(seconds: 3),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  margin: EdgeInsets.only(top: functions.margin),
                  height: functions.height,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(titleText,
                      style: theme.textTheme.labelSmall),
                ))),
        Container(
          margin: const EdgeInsets.only(top: 12),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 55,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                softWrap: true,
                '${index + 1}. $title',
                style: theme.textTheme.labelMedium,
              ),
              Observer(
                  builder: (_) => RotatedBox(
                        quarterTurns: functions.rotation,
                        child: IconButton(
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            size: 35,
                          ),
                          color: theme.colorScheme.secondary,
                          onPressed: () {
                            functions.buttonPressed(titleText.length);
                          },
                        ),
                      ))
            ],
          ),
        )
      ],
    );
  }
}
