import 'package:flutter/material.dart';
import '../../data/models/item_model/item_model.dart';
import 'item_card.dart';

class TimeProgrest extends StatelessWidget {
  final List<ItemModel> items = [
    ItemModel(
      title: "Texnik ko'rik",
      subtitle: "Muddat tugadi!",
      progress: 1.0,
      isExpired: true,
      startDate: DateTime(2024, 10, 6),
      endDate: DateTime(2025, 2, 6),
    ),
    ItemModel(
      title: "Sug'urta",
      subtitle: "4 oy, 21 kun qoldi.",
      progress: 0.50,
      isExpired: false,
      startDate: DateTime(2024, 10, 6),
      endDate: DateTime(2025, 2, 6),
    ),
    ItemModel(
      title: "Haydovchilik\nguvohnomasi",
      subtitle: "4 oy, 21 kun qoldi.",
      progress: 0.50,
      isExpired: false,
      startDate: DateTime(2024, 10, 6),
      endDate: DateTime(2025, 2, 6),
    ),
    ItemModel(
      title: "Tonirovka",
      subtitle: "4 oy, 21 kun qoldi.",
      progress: 0.50,
      isExpired: false,
      startDate: DateTime(2024, 10, 6),
      endDate: DateTime(2025, 2, 6),
    ),
    ItemModel(
      title: "Avtomobil\nmoyi",
      subtitle: "4 oy, 21 kun qoldi.",
      progress: 0.50,
      isExpired: false,
      startDate: DateTime(2024, 10, 6),
      endDate: DateTime(2025, 2, 6),
    ),
    ItemModel(
      title: "Gaz",
      subtitle: "4 oy, 21 kun qoldi.",
      progress: 0.50,
      isExpired: false,
      startDate: DateTime(2024, 10, 6),
      endDate: DateTime(2025, 2, 6),
    ),
    ItemModel(
      title: "Ishonchnoma",
      subtitle: "4 oy, 21 kun qoldi.",
      progress: 0.50,
      isExpired: false,
      startDate: DateTime(2024, 10, 6),
      endDate: DateTime(2025, 2, 6),
    ),
  ];

   TimeProgrest({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double containerWidth = constraints.maxWidth;

        int crossAxisCount;
        double childAspectRatio;
        if (containerWidth > 1200) {
          crossAxisCount = 4;
          childAspectRatio = 1.4;
        } else if (containerWidth > 800) {
          crossAxisCount = 3;
          childAspectRatio = 1.7;
        } else if (containerWidth > 500) {
          crossAxisCount = 2;
          childAspectRatio = 1.4;
        } else {
          crossAxisCount = 1;
          childAspectRatio = 1.9;
        }

        return GridView.count(
          padding: const EdgeInsets.all(8),
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 15,
          crossAxisSpacing: 16,
          childAspectRatio: childAspectRatio,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: List.generate(items.length, (index) {
            final item = items[index];
            return ItemCard(item: item);
          }),
        );
      },
    );
  }
}
