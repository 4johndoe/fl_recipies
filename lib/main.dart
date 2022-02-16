import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:provider/provider.dart';

import 'fooderlich_theme.dart';
import 'home.dart';
import 'models/models.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: MultiProvider(
        providers: [
          // 2
          ChangeNotifierProvider(create: (context) => TabManager()),
          // TODO 10: Add GroceryManager Provider
        ],
        child: const Home(),
      ),
    );
  }
}
