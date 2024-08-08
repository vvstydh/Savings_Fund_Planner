import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:savings_fund_planner/core/app/store/card_data/card_data.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';

class CardEditDelete extends StatelessWidget {
  const CardEditDelete(
      {super.key, required this.cardStore, required this.index});
  final CardData cardStore;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              height: 50,
              width: 350,
              margin: const EdgeInsets.only(bottom: 5),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(
                        theme.colorScheme.primary),
                  ),
                  onPressed: () {
                    cardStore.goToEdit(index);
                    context.go('/cardEdit', extra: index);
                  },
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: theme.colorScheme.secondary,
                    ),
                  ))),
          Container(
              height: 50,
              width: 350,
              margin: const EdgeInsets.only(bottom: 15),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(
                        theme.colorScheme.primary),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
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
                                      cardStore.removeFromInprocess(index);
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
                  child: const Text(
                    'Delete',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 0, 0),
                    ),
                  ))),
          Container(
              height: 50,
              width: 350,
              margin: const EdgeInsets.only(bottom: 15),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(
                        theme.colorScheme.primary),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: theme.colorScheme.secondary,
                    ),
                  )))
        ],
      ),
    );
  }
}
