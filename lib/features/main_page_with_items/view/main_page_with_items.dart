import 'package:flutter/material.dart';

class MainPageWithItems extends StatelessWidget {
const MainPageWithItems({ super.key });

  @override
  Widget build(BuildContext context){
    
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Planner', style: theme.textTheme.labelLarge,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 148,
            child: Image.asset(
              'assets/images/list_is_empty.png',
              fit: BoxFit.fill,
            ),
          ),
           Text(
            'You dont have any in process cards',
            style: theme.textTheme.bodyMedium,
          ),
           Text(
            'Click the button below to create one',
            style: theme.textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}