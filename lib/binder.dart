import 'package:get/get.dart';
import 'package:location_tracker_test/location_controller.dart';

class BinderController implements Bindings {
  @override
  void dependencies() {
   Get.put<LocationController>(LocationController());
  
  }
}