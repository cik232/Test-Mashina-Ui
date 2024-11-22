import 'package:flutter/material.dart';
import 'package:mashina_ui360/features/feature_name/presentation/widgets/time_progrest.dart';

import '../../../data/models/car_model/car_model.dart';
import '../../../data/repositories/theme/app_theme.dart';
import '../../widgets/car_number.dart';
import '../../widgets/carslider.dart';
import '../../widgets/categore.dart';
import '../../widgets/cervike.dart';

class BtnbarHomeBodi extends StatefulWidget {
  final CarModel car;

  const BtnbarHomeBodi({super.key, required this.car});

  @override
  State<BtnbarHomeBodi> createState() => _BtnbarHomeState();
}

class _BtnbarHomeState extends State<BtnbarHomeBodi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/application_fon/main_fon.png'),
          // PNG rasm
          fit: BoxFit.cover, // Ekran bo'ylab joylashadi
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.car.marcs,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        widget.car.name,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.notifications,
                        color: AppTheme.darkSecondary,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.topRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: CarNumber(car: CarModel.car[0]),
                        ),
                      ),
                      Center(child: const CarSlider()),
                      Center(
                        child: const SizedBox(
                          height: 20,
                        ),
                      ),
                      Center(child: const Categore()),
                      Center(
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Cervike(),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: TimeProgrest(),
                        ),
                      )

                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
