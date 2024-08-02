import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class PlannerCardWidget extends StatelessWidget {
  const PlannerCardWidget(
      {super.key,
      required this.goal,
      required this.personHas,
      required this.personNeed,
      required this.cardColor,
      required this.progressLineValue});
  final String goal;
  final double personHas;
  final double personNeed;
  final Color cardColor;
  final double progressLineValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 250,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 5,
        )
      ], borderRadius: BorderRadius.circular(45), color: cardColor),
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
                        SizedBox(
                          height: 30,
                          width: 175,
                          child: SingleChildScrollView(
                            child: Text(
                              goal,
                              softWrap: true,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Money left',
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(
                          height: 30,
                          width: 175,
                          child: SingleChildScrollView(
                            child: Text(
                              '${personNeed - personHas}\$',
                              softWrap: true,
                            ),
                          ),
                        )
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I have',
                      style: theme.textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: 30,
                      width: 70,
                      child: SingleChildScrollView(
                        child: Text(
                          '$personHas',
                          style: theme.textTheme.labelMedium,
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Observer(
                  builder: (_) => SizedBox(
                      width: 165,
                      height: 15,
                      child: LinearProgressIndicator(
                        value: progressLineValue,
                        color: const Color.fromARGB(255, 0, 186, 19),
                        borderRadius: const BorderRadius.all(Radius.circular(30)),
                      )),
                ),
                Column(
                  children: [
                    Text(
                      'I need',
                      style: theme.textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: 30,
                      width: 70,
                      child: SingleChildScrollView(
                        child: Text(
                          '$personNeed',
                          style: theme.textTheme.labelMedium,
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
