import 'package:flutter/material.dart';
// 1
import 'fooderlich_theme.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            // 4
            style: theme.textTheme.headline6,
          ),
        ),
        body: Center(
          child: Text('Let\'s get cooking 👩‍🍳',
              // 5
              style: theme.textTheme.headline1),
        ),
      ),
    );
  }
}
