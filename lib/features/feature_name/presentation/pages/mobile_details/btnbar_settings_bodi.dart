import 'package:flutter/material.dart';
import 'package:mashina_ui360/features/feature_name/presentation/widgets/setting_support_screen.dart';
import 'package:mashina_ui360/features/feature_name/presentation/widgets/settings_language_screen.dart';
import 'package:mashina_ui360/features/feature_name/presentation/widgets/settings_security_screen.dart';

import '../../widgets/setting_user_mobile.dart';

class BtnbarSettingsBodi extends StatelessWidget {
  const BtnbarSettingsBodi({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width;
    double containerHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/application_fon/main_fon.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 60,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: containerHeight * 0.5,
                          width: containerWidth,
                          child: const SettingUserMobile()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: containerHeight * 0.4,
                          width: containerWidth,
                          child: const SettingsSecurityScreen()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: containerHeight * 0.4,
                          width: containerWidth,
                          child: const SettingSupportScreen()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          height: containerHeight * 0.4,
                          width: containerWidth,
                          child: const SettingsLanguageScreen()),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
