import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store/core/app/envvarabile.dart';
import 'package:store/store_app.dart';

import 'package:store/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVarabile.instance.init(envType: EnvTypeEnum.dev);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const StoreApp());
  });
}
