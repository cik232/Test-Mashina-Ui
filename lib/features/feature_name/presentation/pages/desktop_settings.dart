import 'package:flutter/material.dart';
import 'package:mashina_ui360/features/feature_name/presentation/widgets/setting_user_screen.dart';

import '../widgets/setting_support_screen.dart';
import '../widgets/settings_language_screen.dart';
import '../widgets/settings_security_screen.dart';

class DesktopSettings extends StatelessWidget {
  const DesktopSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      const SettingUserScreen(),
      const SettingsSecurityScreen(),
      const SettingSupportScreen(),
      const SettingsLanguageScreen(),
    ];
    return Dialog(
      backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
            width: 650, // Dialog eni
            height: 650, // Dialog bo'yi

            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop(); // Dialogni yopish
                    },
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 16,
                      childAspectRatio: 1.1,
                    ),
                    physics: const BouncingScrollPhysics(),
                    // Bouncing effekti
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Har bir elementga bosilganda nima bo'lishini yozing
                        },
                        child: items[index],
                      );
                    },
                  ),
                ),
              ],
            ),
        ),
    );
  }
}
