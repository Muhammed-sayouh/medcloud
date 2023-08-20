import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medcloud/helper/Language/get_language.dart';
import 'package:medcloud/helper/get_storage.dart';
import 'package:medcloud/helper/localizations_delegates.dart';
import 'package:medcloud/ui/screens/splash/slapsh_screen.dart';
import 'package:medcloud/ui/theme/style/theme.dart';

import 'helper/supported_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(const MedCloudApp());
}

class MedCloudApp extends StatelessWidget {
  const MedCloudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: localizationsDelegates,
      locale: GetStorageHelper.language() == "ar"
          ? const Locale('ar')
          : const Locale('en'),
      fallbackLocale: const Locale('en'),
      title: "MedCloud",
      theme: getTheme(),
      home: const SplashScreen(),
      supportedLocales:  supportedLocales,
      translations: Translation(),
    );
  }
}
