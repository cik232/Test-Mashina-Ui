import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  final List<String> items = [
    '1. Общие положения',
    '2. Общие обязанности водителей',
    '3. Обязанности водителя при дорожно-транспортном происшествии',
    '4. Обязанности пешеходов',
    '5. Обязанности пассажиров',
    '6. Приоритет специальных транспортных средств',
    '7. Предупредительные и аварийные сигналы, применение знака аварийной остановки',
    '8. Начало движения, маневрирование',
    '14. Проезд перекрестков',
    '15. Регулируемые перекрестки',
    '16. Нерегулируемые перекрестки',
    '17. Пешеходные переходы и остановки маршрутных транспортных средств',
    '18. Движение через железнодорожные пути',
    '19. Движение по автомагистралям',
    '20. Движение в жилых зонах',
    '21. Движение на крутых спусках и подъемах',
  ];
  BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yo\'l kitobchasi'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {Navigator.pop(context);},
        ),
      ),
      body: LayoutBuilder(
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
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 4,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF274D68),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    items[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
