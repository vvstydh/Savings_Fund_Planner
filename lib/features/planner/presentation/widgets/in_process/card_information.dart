import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/features/planner/data/card_database.dart';
import 'package:savings_fund_planner/features/planner/data/in_process/card_db.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({
    super.key,
    required this.index,
    required this.cardStore,
    required this.cardDataBase,
  });
  final int index;
  final CardData cardStore;
  final CardDataBase cardDataBase;

  @override
  Widget build(BuildContext context) {
    List<AddHistory> data = cardStore.inProcess[index].additionHistory;

    return Container(
      decoration: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: ListView(shrinkWrap: true, children: [
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              cardStore.inProcess[index].cardImagePath != ''
                  ? SizedBox(
                      width: 300,
                      height: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.file(
                          File(cardStore.inProcess[index].cardImagePath),
                          fit: BoxFit.fill,
                        ),
                      ))
                  : SizedBox(
                      width: 300,
                      height: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/images/noPhoto.png',
                          fit: BoxFit.fill,
                        ),
                      )),
              Container(
                width: 200,
                padding: const EdgeInsets.only(
                    left: 15, top: 5, right: 15, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    cardStore.inProcess[index].goal,
                    softWrap: true,
                  ),
                ),
              )
            ],
          ),
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
                        '${cardStore.inProcess[index].personHas}',
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
                    value: cardStore.inProcess[index].progressLineValue,
                    color: Color.fromARGB(
                        255,
                        cardStore.inProcess[index].progressLineColorValueRed,
                        cardStore.inProcess[index].progressLineColorValueGreen,
                        cardStore.inProcess[index].progressLineColorValueBlue),
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
                        '${cardStore.inProcess[index].personNeed}',
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
              '${cardStore.inProcess[index].personNeed - cardStore.inProcess[index].personHas}\$',
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
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text('Amount to add'),
                          content: TextField(
                            decoration: const InputDecoration(
                              hintText: 'Enter amount',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                            cursorColor: theme.colorScheme.secondary,
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              cardStore.cardAddAmount = double.parse(value);
                            },
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  cardStore.cardAddAmount = 0;
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: theme.textTheme.titleLarge,
                                )),
                            TextButton(
                                onPressed: () {
                                  cardDataBase.addAmountCard(
                                      cardStore.inProcess[index], context);
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Add',
                                  style: theme.textTheme.titleLarge,
                                ))
                          ],
                        ));
              },
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
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text('Amount to remove'),
                          content: TextField(
                            decoration: const InputDecoration(
                              hintText: 'Enter amount',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                            cursorColor: theme.colorScheme.secondary,
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              cardStore.cardAddAmount = double.parse(value);
                            },
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  cardStore.cardAddAmount = 0;
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: theme.textTheme.titleLarge,
                                )),
                            TextButton(
                                onPressed: () {
                                  cardDataBase.removeAmountCard(
                                      cardStore.inProcess[index]);
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Remove',
                                  style: theme.textTheme.titleLarge,
                                ))
                          ],
                        ));
              },
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
          padding: const EdgeInsets.only(right: 20),
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(
                labelPlacement: LabelPlacement.onTicks,
                labelStyle: const TextStyle(color: Colors.black),
                axisLine: const AxisLine(
                  color: Colors.red,
                ),
                interval: 5),
            primaryYAxis: NumericAxis(
              minimum: 0,
              maximum: cardStore.inProcess[index].personNeed,
              interval: cardStore.inProcess[index].personNeed,
              labelStyle: const TextStyle(color: Colors.green),
              axisLine: const AxisLine(color: Colors.transparent),
              majorGridLines: const MajorGridLines(width: 0),
            ),
            plotAreaBorderColor: Colors.transparent,
            series: <LineSeries<AddHistory, String>>[
              LineSeries<AddHistory, String>(
                dataSource: data,
                xValueMapper: (AddHistory dat, _) => dat.date,
                yValueMapper: (AddHistory dat, _) => dat.additionAmountHistory,
                markerSettings: const MarkerSettings(isVisible: true),
                color: Colors.blue,
                width: 2,
              )
            ],
          ),
        ),
        Center(
            child: Text(
          'Savings history',
          style: theme.textTheme.labelLarge,
        )),
        cardStore.inProcess[index].additionHistory.isEmpty
            ? Center(
                child: Text(
                'You haven\'t added or removed any savings yet',
                style: theme.textTheme.labelSmall,
              ))
            : Column(
                children: List.generate(
                  cardStore.inProcess[index].additionHistory.length,
                  (ind) {
                    var reversedHistory = data.reversed.toList();
                    return Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color.fromARGB(102, 102, 102, 102),
                          ),
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          reversedHistory[ind].date,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102),
                          ),
                        ),
                        trailing: reversedHistory[ind].char == '+'
                            ? Text(
                                ('+${reversedHistory[ind].amount}\$'),
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 186, 19),
                                ),
                              )
                            : Text(
                                ('-${reversedHistory[ind].amount}\$'),
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 255, 64, 64),
                                ),
                              ),
                      ),
                    );
                  },
                ),
              ),
        const SizedBox(
          height: 30,
        )
      ]),
    );
  }
}
