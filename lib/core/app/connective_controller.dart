import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectiveController {
  ConnectiveController._();
  static final ConnectiveController instance = ConnectiveController._();
  ValueNotifier<bool> isConnective = ValueNotifier(true);
  Future<void> init() async {
    final reuslt = await Connectivity().checkConnectivity();
    isInternetConnective(reuslt);
    Connectivity().onConnectivityChanged.listen(isInternetConnective);
  }

  bool isInternetConnective(ConnectivityResult? result) {
    if (result == ConnectivityResult.none) {
      isConnective.value = false;
      return false;
    } else if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      isConnective.value = true;
      return true;
    } else {
      return false;
    }
  }
}
