import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class CardInformation extends StatelessWidget {
  const CardInformation(
      {super.key,
      required this.goal,
      required this.personHas,
      required this.personNeed,
      required this.progressLineValue,
      required this.progressLineColor});
  final String goal;
  final double personHas;
  final double personNeed;
  final double progressLineValue;
  final Color progressLineColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      padding: const EdgeInsets.all(30),
      child: ListView(children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black54),
            ),
            Container(
              width: 200,
              padding:
                  const EdgeInsets.only(left: 15, top: 5, right: 15, bottom: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Center(
                child: Text(
                  goal,
                  softWrap: true,
                ),
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 35),
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
              SizedBox(
                  width: 165,
                  height: 15,
                  child: LinearProgressIndicator(
                    value: progressLineValue,
                    color: progressLineColor,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  )),
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
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Money left',
              style: theme.textTheme.labelMedium,
            ),
            Text(
              '${personNeed - personHas}\$',
              style: theme.textTheme.labelMedium,
            )
          ],
        ),
        Container(
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              color: Colors.black54, borderRadius: BorderRadius.circular(45)),
        ),
        Container(
          height: 50,
          width: 250,
          margin: const EdgeInsets.only(bottom: 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.secondary,
              ),
              onPressed: () {},
              child: Text(
                'ADD SAVINGS',
                style: theme.textTheme.bodySmall,
              )),
        ),
        Center(
          child: Text(
            'or',
            style: theme.textTheme.labelSmall,
          ),
        ),
        Container(
          height: 50,
          width: 250,
          margin: const EdgeInsets.only(bottom: 20, top: 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: theme.colorScheme.secondary),
                backgroundColor: theme.colorScheme.primary,
              ),
              onPressed: () {},
              child: Text(
                'REMOVE SAVINGS',
                style: theme.textTheme.titleLarge,
              )),
        ),
        Center(
            child: Text(
          'Graphic',
          style: theme.textTheme.labelLarge,
        )),
        Container(
          height: 300,
          width: 300,
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.black54),
        ),
        Center(
            child: Text(
          'Savings history',
          style: theme.textTheme.labelLarge,
        )),
        Center(
            child: Text(
          'You haven\'t added or removed any savings yet',
          style: theme.textTheme.labelSmall,
        )),
      ]),
    );
  }
}
