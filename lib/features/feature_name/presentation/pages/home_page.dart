import 'package:flutter/material.dart';
import 'package:mashina_ui360/features/feature_name/presentation/pages/desktop_bodi.dart';
import 'package:mashina_ui360/features/feature_name/presentation/pages/mobile_details/mobile_btnbar_bodi.dart';

import '../../data/models/car_model/car_model.dart';
import 'responsive_layout/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ResponsivLayout(
            mobileBody: MobileBtnbarBodi(),
            desktopBody: DesktopBodi(car: CarModel.car[0],),
        ),
      ),
    );
  }
}
