import 'package:flutter/material.dart';

class SettingUserMobile extends StatefulWidget {
  const SettingUserMobile({super.key});

  @override
  State<SettingUserMobile> createState() => _SettingUserScreenState();
}

class _SettingUserScreenState extends State<SettingUserMobile> {
  bool lightOne = true;
  bool lightTwo = true;

  final WidgetStateProperty<Icon?> thumbIcon =
      WidgetStateProperty.resolveWith<Icon?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(Icons.check, color: Colors.white);
      }
      return const Icon(Icons.close);
    },
  );

  final WidgetStateProperty<Icon?> thumbIconOne =
      WidgetStateProperty.resolveWith<Icon?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(Icons.dark_mode_outlined, color: Colors.white);
      }
      return const Icon(Icons.light_mode_outlined);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double containerWidth = constraints.maxWidth;
          double containerHeight = constraints.maxHeight;

          double widgetSize(BuildContext context, double scale) {
            return (containerWidth + containerHeight) / 2 * scale;
          }

          return Column(
            children: [
              Container(
                height: containerHeight * 0.57,
                width: containerWidth,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage(
                                  'assets/user_info/user_imag.jpeg'), // Rasim joylash
                            ),
                            Positioned(
                              top: 8,
                              right: 0,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 14,
                                child: Icon(
                                  Icons.verified,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                           const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const[
                                Text(
                                  "Nickname",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "+998 90 123 45 67",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF4825C2),
                            minimumSize: Size(containerWidth, containerHeight * 0.15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.edit, color: Colors.white, size: widgetSize(context, 0.06),),
                          label: const Text(
                            "Tahrirlash",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: containerHeight * 0.4,
                    width: containerWidth * 0.48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min, // Yig'ib olish uchun
                          children: [
                            const Icon(Icons.notifications,
                                color: Color(0xFF274D68), size: 40),
                            const SizedBox(height: 20),
                            const Text(
                              "Bildirishnoma",
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 20),
                            Switch(
                              thumbIcon: thumbIcon,
                              value: lightOne,
                              onChanged: (bool value) {
                                setState(() {
                                  lightOne = value;
                                });
                              },
                              activeColor: const Color(0xFF274D68),
                              activeTrackColor: Colors.grey[400],
                              inactiveThumbColor: Colors.grey,
                              inactiveTrackColor: Colors.grey[400],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: containerHeight * 0.4,
                    width: containerWidth * 0.48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min, // Yig'ib olish uchun
                          children: [
                            const Icon(Icons.brightness_3,
                                color: Color(0xFF274D68), size: 40),
                            const SizedBox(height: 20),
                            const Text(
                              "Mavzu",
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 20),
                            Switch(
                              thumbIcon: thumbIconOne,
                              value: lightTwo,
                              onChanged: (bool value) {
                                setState(() {
                                  lightTwo = value;
                                });
                              },
                              activeColor: const Color(0xFF274D68),
                              activeTrackColor: Colors.grey[400],
                              inactiveThumbColor: Colors.grey,
                              inactiveTrackColor: Colors.grey[400],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
