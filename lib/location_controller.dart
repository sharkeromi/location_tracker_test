import 'package:flutter_background_geolocation/flutter_background_geolocation.dart' as bg;

import 'package:get/get.dart';

class LocationController extends GetxController {
  final RxString lat = RxString('');
  final RxString long = RxString('');
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    bg.BackgroundGeolocation.onLocation((bg.Location location) {
      print('[location] - $location');
      lat.value = location.coords.latitude.toString();
      long.value = location.coords.longitude.toString();
    });

    bg.BackgroundGeolocation.ready(bg.Config(
            desiredAccuracy: bg.Config.DESIRED_ACCURACY_HIGH,
            distanceFilter: 5.0,
            locationUpdateInterval: 5000,
            stopOnTerminate: false,
            startOnBoot: true,
            debug: true,
            logLevel: bg.Config.LOG_LEVEL_VERBOSE,
            enableHeadless: true,
            notification: bg.Notification(title: "Your location", text: 'Tap to see')))
        .then((bg.State state) {
      if (!state.enabled) {
        bg.BackgroundGeolocation.start();
      }
    });
  }
}
