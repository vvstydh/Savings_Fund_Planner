import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar(
      {super.key,
      required Color indicatorColor,
      required List<NavigationDestination> destinations,
      required Color backgroundColor});

  @override
  Widget build(BuildContext context) {
    int currentPageIndex = 0;
    return Container(
        height: 75,
        margin: const EdgeInsets.fromLTRB(24, 0, 24, 30),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(45)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(45)),
          child: NavigationBar(
            onDestinationSelected: (int index) {
              currentPageIndex = index;
            },
            selectedIndex: currentPageIndex,
            indicatorColor: const Color.fromARGB(255, 50, 82, 249),
            backgroundColor: Colors.white,
            destinations: [
              NavigationDestination(
                icon: IconButton(
                    onPressed: () => context.go('/'),
                    icon: const Icon(Icons.book_rounded)),
                label: 'Planner',
              ),
              NavigationDestination(
                  icon: IconButton(
                    onPressed: () => context.go('/withItems'),
                    icon: const Icon(Icons.question_mark_rounded),
                  ),
                  label: "Helper"),
              NavigationDestination(
                  icon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.settings)),
                  label: "Settings"),
            ],
          ),
        ));
  }
}
