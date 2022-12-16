import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_flutter/Ui/screens/home_page.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    tools: [
      ...DevicePreview.defaultTools
    ],
    builder: (context) {
      return const MyApp();
    }
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Task Flutter',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
