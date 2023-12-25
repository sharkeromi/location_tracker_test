import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location_tracker_test/location_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final LocationController locationController = Get.find<LocationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Latitude: ${locationController.lat.value}'),
              Text('Longitude: ${locationController.long.value}'),
            ],
          ),
        ),
      ),
    );
  }
}
