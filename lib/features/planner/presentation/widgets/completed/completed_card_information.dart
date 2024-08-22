import 'dart:io';

import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/features/planner/data/card_database.dart';
import 'package:savings_fund_planner/features/planner/data/in_process/card_db.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CompletedCardInformation extends StatelessWidget {
  const CompletedCardInformation(
      {super.key,
      required this.index,
      required this.cardStore,
      required this.cardDataBase});

  final int index;
  final CardData cardStore;
  final CardDataBase cardDataBase;

  @override
  Widget build(BuildContext context) {
    List<AddHistory> data = cardStore.completed[index].additionHistory;

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
              cardStore.completed[index].cardImagePath != ''
                  ? SizedBox(
                      width: 300,
                      height: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.file(
                          File(cardStore.completed[index].cardImagePath),
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
                    cardStore.completed[index].goal,
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
                        '${cardStore.completed[index].personHas}',
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
                    value: cardStore.completed[index].progressLineValue,
                    color: Color.fromARGB(
                        255,
                        cardStore.completed[index].progressLineColorValueRed,
                        cardStore.completed[index].progressLineColorValueGreen,
                        cardStore.completed[index].progressLineColorValueBlue),
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
                        '${cardStore.completed[index].personNeed}',
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
              maximum: cardStore.completed[index].personNeed,
              interval: cardStore.completed[index].personNeed,
              labelStyle: const TextStyle(color: Colors.green),
              axisLine: const AxisLine(color: Colors.transparent),
              majorGridLines: const MajorGridLines(width: 0),
            ),
            plotAreaBorderColor: Colors.transparent,
            series: <LineSeries<AddHistory, String>>[
              LineSeries<AddHistory, String>(
                dataSource: data,
                xValueMapper: (AddHistory dat, _) => dat.date,
                yValueMapper: (AddHistory dat, _) =>
                    dat.additionAmountHistory,
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
        cardStore.completed[index].additionHistory.isEmpty
            ? Center(
                child: Text(
                'You haven\'t added or removed any savings yet',
                style: theme.textTheme.labelSmall,
              ))
            : Column(
                children: List.generate(
                  cardStore.completed[index].additionHistory.length,
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
