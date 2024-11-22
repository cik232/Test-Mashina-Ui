import 'package:flutter/material.dart';
import 'package:mashina_ui360/features/feature_name/data/repositories/dimensions/dimensions.dart';

class ResponsivLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ResponsivLayout({required this.mobileBody, required this.desktopBody});



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraynts){
      if(constraynts.maxWidth < mobileWidth){
        return mobileBody;
      }else{
        return desktopBody;
      }
    });
  }
}
