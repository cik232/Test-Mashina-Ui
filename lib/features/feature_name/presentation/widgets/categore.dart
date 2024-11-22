import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashina_ui360/features/feature_name/presentation/pages/service_screens/book_screen.dart';
import 'package:mashina_ui360/features/feature_name/presentation/pages/service_screens/fine_screen.dart';
import 'package:mashina_ui360/features/feature_name/presentation/pages/service_screens/location_screen.dart';

import '../pages/service_screens/car_screen.dart';

class Categore extends StatelessWidget {
  const Categore({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Rasmlar uchun kenglik proporsiyasi
    double imageWidthFactor = screenWidth *
        0.1; // Chiziqning kengligi va balandligini proporsional qilish
    double dividerWidth = screenWidth * 0.004;
    double dividerHeight =
        screenHeight * 0.2; // Balandlikni ekran foiziga bog'lash

    return SizedBox(
      height: 120,
      width: screenWidth,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                // BlocProvider.of<UIBloc>(context).add(
                //   // SelectContentEvent(ContentType.fine_screen),
                // );
              },
              child: _buildCategoryItem('assets/app_icon/jarima_m.png',
                  'Jarimalar\n', imageWidthFactor,
                  onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FineScreen()));
                  }),
            ),
            _buildDivider(dividerWidth, dividerHeight),
            InkWell(
              onTap: () {
                // BlocProvider.of<UIBloc>(context).add(
                //   // SelectContentEvent(ContentType.car_screen),
                // );
              },
              child: _buildCategoryItem('assets/app_icon/shina_m.png',
                  'Avtomobil\nbo’limi', imageWidthFactor,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CarScreen()));
                  }),
            ),
            _buildDivider(dividerWidth, dividerHeight),
            InkWell(
              onTap: () {
                // BlocProvider.of<UIBloc>(context).add(
                //   // SelectContentEvent(ContentType.book_screen),
                // );
              },
              child: _buildCategoryItem('assets/app_icon/book_m.png',
                  'Yo’l\nkitobchasi', imageWidthFactor,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BookScreen()));
                  }),
            ),
            _buildDivider(dividerWidth, dividerHeight),
            InkWell(
              onTap: () {
                // BlocProvider.of<UIBloc>(context).add(
                //   // SelectContentEvent(ContentType.location_screen),
                // );
              },
              child: _buildCategoryItem('assets/app_icon/lokation_m.png',
                  'Yo’l\nkitobchasi', imageWidthFactor,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen()));
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String imagePath, String title, double imageWidth,
      {VoidCallback? onPressed}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: onPressed,
          child: Image.asset(
            height: 80,
            fit: BoxFit.cover,
            imagePath,
            width: 80,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF274D68),
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildDivider(double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            const Color(0xFF274D68),
            const Color(0xFF274D68).withOpacity(0.9),
          ],
        ),
      ),
    );
  }
}
