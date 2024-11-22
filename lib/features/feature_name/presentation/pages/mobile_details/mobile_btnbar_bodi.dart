import 'dart:developer';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:mashina_ui360/features/feature_name/presentation/pages/mobile_details/btnbar_home_bodi.dart';
import 'package:mashina_ui360/features/feature_name/presentation/pages/mobile_details/btnbar_info_bodi.dart';

import '../../../data/models/car_model/car_model.dart';
import '../../../data/repositories/theme/app_theme.dart';
import 'btnbar_settings_bodi.dart';


class MobileBtnbarBodi extends StatefulWidget {
  const MobileBtnbarBodi({Key? key}) : super(key: key);

  @override
  State<MobileBtnbarBodi> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MobileBtnbarBodi> {
  final _pageController = PageController(initialPage: 0);

  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  int maxCount = 4;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      BtnbarHomeBodi(car: CarModel.car[0],),
      BtnbarInfoBodi(),
      BtnbarSettingsBodi(),
    ];
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: AppTheme.lightSecondary,
              showLabel: true,
              textOverflow: TextOverflow.visible,
              maxLine: 1,
              shadowElevation: 5,
              kBottomRadius: 28.0,
              notchColor: AppTheme.lightSecondary,

              removeMargins: false,
              bottomBarWidth: 500,
              showShadow: false,
              durationInMilliSeconds: 400,

              itemLabelStyle:
                  const TextStyle(fontSize: 10, color: Colors.white),

              elevation: 1,
              bottomBarItems: [
                BottomBarItem(
                  inActiveItem: Image.asset(
                    'assets/button_bar/asosi.png',
                    color: Colors.white,
                  ),
                  activeItem: Image.asset(
                    'assets/button_bar/asosi.png',
                    color: Colors.white,
                  ),
                  itemLabel: 'Asosiy',
                ),
                BottomBarItem(
                  inActiveItem: Image.asset(
                    'assets/button_bar/hujatlar.png',
                    color: Colors.white,
                  ),
                  activeItem: Image.asset(
                    'assets/button_bar/hujatlar.png',
                    color: Colors.white,
                  ),
                  itemLabel: 'Hujjatlarim',
                ),
                BottomBarItem(
                  inActiveItem: Image.asset(
                    'assets/button_bar/sozlamalar.png',
                    color: Colors.white,
                  ),
                  activeItem: Image.asset(
                    'assets/button_bar/sozlamalar.png',
                    color: Colors.white,
                  ),
                  itemLabel: 'Sozlamalar',
                ),
              ],
              onTap: (index) {
                log('current selected index $index');
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
    );
  }
}
