import 'package:flutter/material.dart';

import '../../widgets/build_car_license_section.dart';
import '../../widgets/user_info_item.dart';

class BtnbarInfoBodi extends StatelessWidget {
  const BtnbarInfoBodi({super.key});

  @override
  Widget build(BuildContext context) {
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

    double containerWidth = MediaQuery.of(context).size.width;
    double containerHeight = MediaQuery.of(context).size.height;

    double widgetSize(BuildContext context, double scale) {
      return (containerWidth + containerHeight) / 2 * scale;
    }

    return Scaffold(
      backgroundColor: Colors.grey[200], // Umumiy fon rangi
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/application_fon/info_tool.png'),
                    fit: BoxFit.cover, // Ekran bo'ylab joylashadi
                  ),
                ),
              ),
              Positioned(
                bottom: -65,
                left: 3,
                right: 3,
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                                'assets/user_info/user_imag.jpeg'), // Rasim joylash
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
                            ),
                          ),
                          Text(
                            "Palonchiyev",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 60,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4825C2),
                minimumSize: Size(containerWidth, containerHeight * 0.07),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.check_circle_outline, color: Colors.white),
              label: const Text(
                "ONE ID",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Tasdiqlangan matni
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Tasdiqlangan!",
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(5),
              shrinkWrap: true,
              itemCount: 1, // Bu yerda faqat bitta item ishlatyapsiz
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Birinchi qism
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Passport ma’lumotlari",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: userInfoDataOne
                          .map((data) => UserInfoItem(
                                title: data['title']!,
                                value: data['value']!,
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 20),

                    // Ikkinchi qism
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Boshqa ma’lumotlar",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: userInfoDataTwo
                          .map((data) => UserInfoItem(
                                title: data['title']!,
                                value: data['value']!,
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 20),

                    // Uchinchi qism
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Qo’shimcha ma’lumotlar",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: userInfoDataThree
                          .map((data) => UserInfoItem(
                                title: data['title']!,
                                value: data['value']!,
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 20),

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Avtomobil toifasi",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const BuildCarLicenseSection(),

                    // Pastki bo'sh joy
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
