import 'package:web_view/headers.dart';

class ConnectivityController with ChangeNotifier {
  ConnectivityController() {
    checkConnection();
  }

  bool isNotConnected = true;

  void checkConnection() {
    Connectivity().onConnectivityChanged.listen(
      (event) {
        isNotConnected = event.contains(ConnectivityResult.none);
      },
    );
  }
}
