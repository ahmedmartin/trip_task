import 'package:clean_architecture_posts_app/trips/presentation/pages/items_page/item_page_descktop.dart';
import 'package:clean_architecture_posts_app/trips/presentation/pages/items_page/item_page_mobile.dart';
import 'package:clean_architecture_posts_app/trips/presentation/pages/items_page/item_page_tab.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // 📱 Mobile layout
          return const ItemPageMobile();
        } else if (constraints.maxWidth < 1100) {
          // 💻 Tablet layout
          return const ItemPageTab();
        } else {
          // 🖥️ Desktop layout
          return const ItemPageDescktop();
        }
      },
    );
  }
}