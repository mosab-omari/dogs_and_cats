import 'package:connectivity_plus/connectivity_plus.dart';


class ConnectivityChecker {
  Future<bool> hasInternetConnection() async {
    ConnectivityResult result = await Connectivity().checkConnectivity();

    return result == ConnectivityResult.wifi ||
        result == ConnectivityResult.mobile;
  }
}
