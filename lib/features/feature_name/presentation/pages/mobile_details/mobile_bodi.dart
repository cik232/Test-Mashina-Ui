import 'package:flutter/material.dart';
import 'package:mashina_ui360/features/feature_name/presentation/pages/mobile_details/mobile_btnbar_bodi.dart';

class MobileBodi extends StatelessWidget {
  const MobileBodi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("M O B I L E"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: MobileBtnbarBodi(),
            ),
          ),
        ],
      ),
    );
  }
}
