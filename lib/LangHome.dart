import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize/Exampl/lang_controller.dart';
import 'package:localize/Exampl/strings.dart';

class LangView extends StatelessWidget {
  LangView({super.key});

  var controller = Get.put(LangController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Strings(), //Get.deviceLocale, ///we can use this
      locale: Locale('en', 'UK'),
      fallbackLocale: Locale('en', 'UK'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text('Localization'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'How are You!'.tr,
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.changeLocale('arb', 'SUD');
                },
                child: Text('Arabic'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.changeLocale('urd', 'Pk');
                },
                child: Text('Urdu'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.changeLocale('en', 'US');
                },
                child: Text('Eng'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
