import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/core/widgets/planner_card_widget.dart';
import 'package:savings_fund_planner/features/card_addition.dart/presentation/widgets/choose_color_row.dart';

class CardEdit extends StatelessWidget {
  const CardEdit({super.key, required this.cardStore, required this.index});
  final CardData cardStore;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        surfaceTintColor: theme.colorScheme.primary,
        centerTitle: true,
        title: Text(
          'Edit card',
          style: theme.textTheme.labelLarge,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            cardStore.unEdited();
            context.go('/');
          },
        ),
        actions: [
          Observer(
            builder: (_) => cardStore.personHas >= cardStore.personNeed
                ? IconButton(
                    icon: const Icon(
                      Icons.check_rounded,
                    ),
                    onPressed: () {},
                  )
                : IconButton(
                    icon: const Icon(
                      Icons.check_rounded,
                      color: Color.fromARGB(255, 0, 186, 19),
                    ),
                    onPressed: () {
                      cardStore.edited(index);
                      context.go('/');
                    },
                  ),
          )
        ],
      ),
      backgroundColor: theme.colorScheme.primary,
      body: ListView(
        children: [
          /*
          Observer(
              builder: (_) => PlannerCardWidget(
                    goal: cardStore.goal,
                    personHas: cardStore.personHas,
                    personNeed: cardStore.personNeed,
                    progressLineValue: cardStore.progressLineValue,
                  )),
                  */
          Container(
            height: 50,
            width: 300,
            padding: const EdgeInsets.symmetric(horizontal: 50),
            margin: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.secondary,
                ),
                onPressed: () {
                  cardStore.pickImage();
                },
                child: Text(
                  'REPLACE PHOTO',
                  style: theme.textTheme.bodySmall,
                )),
          ),
          Container(
            height: 50,
            width: 300,
            margin: const EdgeInsets.only(top: 10),
            child: TextButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary,
                ),
                onPressed: () {
                  cardStore.cardImage = null;
                },
                child: Text(
                  'DELETE PHOTO',
                  style: theme.textTheme.titleLarge,
                )),
          ),
          ChooseColorRow(
            cardStore: cardStore,
          ),
          Center(
            child: Text('I am saving for', style: theme.textTheme.displayLarge),
          ),
          Center(
            child:
                Text('Enter your goal', style: theme.textTheme.displayMedium),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            child: TextField(
              onChanged: (goalText) {
                cardStore.goal = goalText;
              },
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: cardStore.goal,
                hintStyle: const TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Center(
            child: Text('I need', style: theme.textTheme.displayLarge),
          ),
          Center(
            child: Text('Enter how much you need',
                style: theme.textTheme.displayMedium),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (need) {
                cardStore.personNeed = double.parse(need);
                cardStore.updateLine();
              },
              cursorColor: Colors.black,
              minLines: 1,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: '${cardStore.personNeed}\$',
                hintStyle: const TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Center(
            child: Text('I have', style: theme.textTheme.displayLarge),
          ),
          Center(
            child: Text('Enter how much you have',
                style: theme.textTheme.displayMedium),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (has) {
                cardStore.personHas = double.parse(has);
                cardStore.updateLine();
              },
              cursorColor: Colors.black,
              minLines: 1,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: '${cardStore.personHas}\$',
                hintStyle: const TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
