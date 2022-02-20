import 'package:flutter/material.dart';
import 'package:fooderlich/components/grocery_tile.dart';
import 'package:fooderlich/models/grocery_manager.dart';
import 'package:fooderlich/screens/grocery_item_screen.dart';

class GroceryListScreen extends StatelessWidget {
  final GroceryManager manager;

  const GroceryListScreen({
    Key? key,
    required this.manager,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    final groceryItems = manager.groceryItems;
    // 2
    return Padding(
      padding: const EdgeInsets.all(16.0),
      // 3
      child: ListView.separated(
        // 4
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          final item = groceryItems[index];
          // TODO 28: Wrap in a Dismissable
          return InkWell(
            child: GroceryTile(
              key: Key(item.id),
              item: item,
              onComplete: (change) {
                if (change != null) {
                  manager.completeItem(index, change);
                }
              },
            ),
            // 2
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GroceryItemScreen(
                    originalItem: item,
                    onUpdate: (item) {
                      // 4
                      manager.updateItem(item, index);
                      // 5
                      Navigator.pop(context);
                    },
                    // 6
                    onCreate: (item) {},
                  ),
                ),
              );
            },
          );
          // 5
          return GroceryTile(
            key: Key(item.id),
            item: item,
            // 6
            onComplete: (change) {
              // 7
              if (change != null) {
                manager.completeItem(index, change);
              }
            },
          );
        },
        // 8
        separatorBuilder: (context, index) {
          return const SizedBox(height: 16.0);
        },
      ),
    );
  }
}
