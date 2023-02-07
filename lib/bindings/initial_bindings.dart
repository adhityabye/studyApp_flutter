import 'package:get/get.dart';
import 'package:study_app_flutter/controllers/auth_controller.dart';

import '../controllers/theme_controller.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
    Get.put(
      ThemeController(),
    );
  }
}
