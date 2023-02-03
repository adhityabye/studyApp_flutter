import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:study_app_flutter/bindings/initial_bindings.dart';
import 'package:study_app_flutter/data_uploader_screen.dart';
import 'package:get/get.dart';
import 'package:study_app_flutter/routes/app_routes.dart';
import 'package:study_app_flutter/screens/introduction/introduction.dart';
import 'package:study_app_flutter/screens/splash/splash_screen.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes(),
    );
  }
}
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(GetMaterialApp(home: DataUploaderScreen()));
// }
