import 'package:flutter/material.dart';
import 'package:mashina_ui360/features/feature_name/presentation/pages/desktop_settings.dart';
import 'package:mashina_ui360/features/feature_name/presentation/widgets/build_car_license_section.dart';

import '../../data/models/car_model/car_model.dart';
import '../widgets/car_number.dart';
import '../widgets/carslider.dart';
import '../widgets/categore.dart';
import '../widgets/cervike.dart';
import '../widgets/time_progrest.dart';
import '../widgets/user_info_item.dart';

class DesktopBodi extends StatefulWidget {
  final CarModel car;

  const DesktopBodi({super.key, required this.car});

  @override
  State<DesktopBodi> createState() => _DesktopBodiState();
}

class _DesktopBodiState extends State<DesktopBodi> {
  // void showCustomDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Dialog(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(20.0),
  //         ),
  //         child: Container(
  //           width: 500, // Dialogning eni
  //           height: 400, // Dialogning bo'yi
  //           padding: EdgeInsets.all(20.0),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.stretch,
  //             children: [
  //               Align(
  //                 alignment: Alignment.topLeft,
  //                 child: IconButton(
  //                   icon: Icon(Icons.arrow_back),
  //                   onPressed: () {
  //                     Navigator.of(context).pop();
  //                   },
  //                 ),
  //               ),
  //               CircleAvatar(
  //                 radius: 50,
  //                 backgroundImage: AssetImage('assets/avatar.jpg'), // Rasmingiz
  //                 child: Align(
  //                   alignment: Alignment.bottomRight,
  //                   child: Icon(
  //                     Icons.add_a_photo,
  //                     size: 20,
  //                     color: Colors.white,
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(height: 20),
  //               TextField(
  //                 decoration: InputDecoration(
  //                   labelText: 'Nickname',
  //                   prefixIcon: Icon(Icons.person),
  //                 ),
  //               ),
  //               SizedBox(height: 10),
  //               TextField(
  //                 decoration: InputDecoration(
  //                   labelText: 'Password',
  //                   prefixIcon: Icon(Icons.lock),
  //                 ),
  //                 obscureText: true,
  //               ),
  //               SizedBox(height: 10),
  //               TextField(
  //                 decoration: InputDecoration(
  //                   labelText: 'Email',
  //                   prefixIcon: Icon(Icons.email),
  //                 ),
  //               ),
  //               SizedBox(height: 10),
  //               TextField(
  //                 decoration: InputDecoration(
  //                   labelText: 'Phone Number',
  //                   prefixIcon: Icon(Icons.phone),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
  void showProfileDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const DesktopSettings();
      },
    );
  }

  final List<Map<String, String>> userInfoDataOne = [
    {"title": "Tug'ilgan sana:", "value": "02.09.2003"},
    {"title": "JShShIR:", "value": "928741927431"},
    {"title": "Berilgan sanasi:", "value": "02.09.2021"},
    {"title": "Muddati tugash sanasi:", "value": "02.09.2031"},
    {
      "title": "Kim \ntomonidan \nberilgan:",
      "value": "АСАКИНСКИЙ \nГОМ АСАКИНСКОГО \nРОВД АНДИЖАНСКОЙ ОБЛАСТИ"
    },
    {"title": "Passport seriya va raqami:", "value": "AA12345"},
  ];
  final List<Map<String, String>> userInfoDataTwo = [
    {"title": "Mamlakat:", "value": "O'zbekiston Respublikasi"},
    {"title": "Hudud:", "value": "Sirdaryo Viloyati"},
    {"title": "Tuman:", "value": "Mirzaobod tumanii"},
    {"title": "Kadastr raqami:", "value": "12:03:04:02:04:0219"},
    {"title": "Manzil:", "value": "BIRLASGAN KFJ, M.LUG'BEK MFY, улица РС"},
  ];
  final List<Map<String, String>> userInfoDataThree = [
    {"title": "Berilgan sana:", "value": "03.10.2021"},
    {"title": "Amal qilish muddati:", "value": "03.10.2031"},
    {"title": "Berilgan joyi:", "value": "Mirzaobod tumani"},
    {"title": "Guvohnoma raqami:", "value": "AG0187865"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        children: [
          Container(
            width: 400,
            color: Colors.deepPurple[400],
            child: Column(
              children: [
                Container(
                  height: 100,
                  color: const Color(0xFF274D68),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/user_info/user_imag.jpeg'),
                          ),
                          Positioned(
                            top: 8,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 10,
                              child: Icon(
                                Icons.verified,
                                color: Colors.blue,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Azamjon Alijonov",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            "Palonchiyev",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/application_fon/main_fon.png'),
                        // PNG rasm
                        fit: BoxFit.cover, // Ekran bo'ylab joylashadi
                      ),
                    ),
                    child: Column(
                      children: [
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
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      widget.car.marcs,
                                                      style: const TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                    Text(
                                                      widget.car.name,
                                                      style: const TextStyle(
                                                          fontSize: 14),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Center(child: CarSlider()),
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: CarNumber(car: CarModel.car[0]),
                                      ),
                                    ),
                                    const Center(
                                      child: SizedBox(
                                        height: 20,
                                      ),
                                    ),
                                    const Center(child: Categore()),
                                    const Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Cervike(),
                                      ),
                                    ),

                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Passport ma’lumotlari",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: userInfoDataOne
                                            .map((data) => UserInfoItem(
                                                  title: data['title']!,
                                                  value: data['value']!,
                                                ))
                                            .toList(),
                                      ),
                                    ),
                                    const SizedBox(height: 20),

                                    // Ikkinchi qism
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Boshqa ma’lumotlar",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: userInfoDataTwo
                                            .map((data) => UserInfoItem(
                                                  title: data['title']!,
                                                  value: data['value']!,
                                                ))
                                            .toList(),
                                      ),
                                    ),
                                    const SizedBox(height: 20),

                                    // Uchinchi qism
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Qo’shimcha ma’lumotlar",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: userInfoDataThree
                                            .map((data) => UserInfoItem(
                                                  title: data['title']!,
                                                  value: data['value']!,
                                                ))
                                            .toList(),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 8, top: 8, right: 8),
                                      child: Text(
                                        "Avtomobil toifasi",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 6, right: 6),
                                        child: BuildCarLicenseSection()),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/application_fon/main_fon.png'),
                  // PNG rasm
                  fit: BoxFit.cover, // Ekran bo'ylab joylashadi
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 5,),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 15),
                        //   child: _buildIconButton(Icons.arrow_back_sharp,
                        //       onPressed: () {}),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            _buildIconButton(
                              Icons.notifications,
                              onPressed: () => showProfileDialog(context),
                            ),
                            _buildIconButton(
                              Icons.settings,
                              onPressed: () => showProfileDialog(context),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: TimeProgrest(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(IconData icon, {VoidCallback? onPressed}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF274D68),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon),
        color: Colors.white,
        onPressed: onPressed,
      ),
    );
  }
}
