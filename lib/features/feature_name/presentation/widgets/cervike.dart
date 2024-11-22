import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mashina_ui360/features/feature_name/presentation/pages/service_screens/retrofitting_screen.dart';
import 'package:mashina_ui360/features/feature_name/presentation/pages/service_screens/safety_screen.dart';
import 'package:mashina_ui360/features/feature_name/presentation/pages/service_screens/tow_truck_screen.dart';

class Cervike extends StatelessWidget {
  const Cervike({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double containerWidth = constraints.maxWidth;
          double containerHeight = constraints.maxHeight;

          double widgetSize(BuildContext context, double scale) {
            return (containerWidth + containerHeight) / 2 * scale;
          }

          return Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5,right: 6),
                    child: Container(
                      height: containerHeight * 0.42,
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
                        child: Expanded(
                          child: InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => RetrofittingScreen()));},
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('assets/app_icon/jihozlash.png',width: widgetSize(context, 0.15),),
                                  ),
                                  const SizedBox(width: 5),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text(
                                      "Qayta jihozlash",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: widgetSize(context, 0.04),
                                      ),
                                                                     ),
                                   ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,right: 6),
                    child: Container(
                      height: containerHeight * 0.42,
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
                        child: Expanded(
                          child: InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SafetyScreen()));},
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:  Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset('assets/app_icon/tarix_tek.png', width: widgetSize(context, 0.1),),
                                    ),
                                    const SizedBox(width: 10),
                                     Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Text(
                                        "Xavfsizlik",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: widgetSize(context, 0.04),
                                        ),
                                                                         ),
                                     ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Container(
                  height: containerHeight * 0.9,
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
                  child: AspectRatio(
                    aspectRatio: 1/1,
                    child:  InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TowTruckScreen()));},
                      child: Container(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Expanded(
                          child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/app_icon/evakuvator.png',width: 100,),
                                    const SizedBox(width: 10),
                                    const Text(
                                      "Evakuatorni chaqirish",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 6),
              //   child: Container(
              //     height: containerHeight * 0.9,
              //     width: containerWidth * 0.48,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(16),
              //       boxShadow: const [
              //         BoxShadow(
              //           color: Colors.black12,
              //           blurRadius: 10,
              //           spreadRadius: 2,
              //           offset: Offset(0, 5),
              //         ),
              //       ],
              //     ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: FittedBox(
              //             fit: BoxFit.scaleDown,
              //             child: Container(
              //               child: Column(
              //                 mainAxisAlignment: MainAxisAlignment.center,
              //                 children: [
              //                   Image.asset(
              //                     'assets/app_icon/evakuvator.png',
              //                     width: 80, // Rasm kengligini oshirish
              //                   ),
              //                   Text(
              //                     'Evakuatorni chaqirish',
              //                     style: TextStyle(fontSize: widgetSize(context, 0.09), color: Colors.grey),
              //                     textAlign: TextAlign.center,
              //                     maxLines: 2,
              //                     overflow: TextOverflow.ellipsis,
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),


            ],
          );
        },
      ),
    );
  }
}
