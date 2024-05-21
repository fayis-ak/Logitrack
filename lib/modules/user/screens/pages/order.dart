import 'dart:async';

import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:logitrack/modules/company/utils/responsivesize.dart';

class Orderbottom extends StatefulWidget {
  const Orderbottom({super.key});

  @override
  State<Orderbottom> createState() => _OrderbottomState();
}

class _OrderbottomState extends State<Orderbottom> {
  int _index = 0;

  int activeIndex = 0;
  final Completer<GoogleMapController> _controller = Completer();

  final google_api_key = "AIzaSyBZHkeiz0Y1kI-xgC4rzrqObBNu_8DEA6I";

  static const LatLng sourceLocation = LatLng(10.98, 76.23);
  static const LatLng destination = LatLng(10.9985, 76.1422);

  List<LatLng> polylineCoordinates = [];

  void getpolyPoint() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );

    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng point) => polylineCoordinates.add(
          LatLng(
            point.latitude,
            point.longitude,
          ),
        ),
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    getpolyPoint();
    super.initState();
  }

 

  List<StepperData> generateStepperData() {
    return [
      StepperData(
        title: StepperText("Shipment Created"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: const Icon(Icons.check_box, color: Colors.white),
        ),
      ),
      StepperData(
        title: StepperText("Vehicle Assigned"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.check_box, color: Colors.white),
        ),
      ),
      StepperData(
        title: StepperText("Shipment picked"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.check_box, color: Colors.white),
        ),
      ),
      StepperData(
        title: StepperText("In Transit"),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.check_box, color: Colors.white),
        ),
      ),
      if (activeIndex == 4)
        StepperData(
          title: StepperText("Shipment Delivered"),
          iconWidget: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: const Icon(Icons.check_box, color: Colors.white),
          ),
        ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .040,
          ),
          Container(
            height: ResponsiveHelper.getHeight(context) / 2,
            // color: Colors.red,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.75))
            ]),
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: sourceLocation,
                zoom: 14.5,
              ),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              polylines: {
                if (polylineCoordinates.isNotEmpty)
                  Polyline(
                    polylineId: PolylineId("route"),
                    points: polylineCoordinates,
                    color: Colors.blue,
                    width: 4,
                  )
              },
              markers: {
                Marker(
                  markerId: MarkerId('Source'),
                  position: sourceLocation,
                ),
                Marker(
                  markerId: MarkerId('destination'),
                  position: destination,
                ),
              },
            ),
          ),
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .020,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveHelper.getWidth(context) * .050,
            ),
            child: Container(
              padding: EdgeInsets.only(
                left: ResponsiveHelper.getWidth(context) * .050,
                right: ResponsiveHelper.getWidth(context) * .050,
              ),
              width: double.infinity,
              height: ResponsiveHelper.getHeight(context) * .110,
              decoration: BoxDecoration(
                color: Color(0xFFD3EBF7),
                borderRadius: BorderRadius.circular(
                    ResponsiveHelper.getWidth(context) * .010),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: ResponsiveHelper.getWidth(context) * .070,
                  ),
                  Spacer(),
                  Icon(Icons.call),
                  Icon(Icons.message_outlined),
                ],
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .030,
          ),
          // Stepper(
          //   physics: BouncingScrollPhysics(),
          //   currentStep: _index,
          //   onStepCancel: () {},
          //   onStepContinue: () {},
          //   onStepTapped: (int index) {},
          //   steps: <Step>[
          //     Step(
          //       title: const Text('Shipment Created'),
          //       content: Text(''),
          //       isActive: true,
          //     ),
          //     const Step(
          //       title: Text('Vehicle Assigned'),
          //       content: Text(' '),
          //     ),
          //     Step(title: const Text('Shipment Picked'), content: Text('')),
          //     Step(title: const Text(' In transit'), content: Text('')),
          //     Step(title: const Text('Shipment Delivered '), content: Text('')),
          //   ],
          // )

          Padding(
            padding: const EdgeInsets.all(20),
            child: AnotherStepper(
              stepperList: generateStepperData(),
              stepperDirection: Axis.vertical,
              iconWidth: 40,
              iconHeight: 40,
              activeBarColor: Colors.blue,
              inActiveBarColor: Colors.grey,
              inverted: false,
              verticalGap: 30,
              activeIndex: activeIndex,
              barThickness: 8,
            ),
          ),

          // Column(
          //   children: [
          //     ElevatedButton(
          //       onPressed: () {
          //         setState(() {
          //           activeIndex = 1;
          //         });
          //       },
          //       child: Text('insta'),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {
          //         setState(() {
          //           activeIndex = 2;
          //         });
          //       },
          //       child: Text('youtube'),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {
          //         setState(() {
          //           activeIndex = 3;
          //         });
          //       },
          //       child: Text('upload'),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {
          //         setState(() {
          //           activeIndex = 4;
          //         });
          //       },
          //       child: Text('refer'),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
