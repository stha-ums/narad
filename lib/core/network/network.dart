import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:logging/logging.dart';

abstract class Network {
  bool get isConnected;
  Stream<ConnectivityResult> get connection;
}

class NetworkImpl implements Network {
  ///private costructor
  NetworkImpl._init(Connectivity connectivity, bool isConnected)
      : _connectivity = connectivity,
        _isConnected = isConnected {
    connectivity.onConnectivityChanged.listen(
      (ConnectivityResult result) {
        _logger.info('Connectivity changed: $result');
        if (result == ConnectivityResult.none) {
          _isConnected = false;
        } else {
          _isConnected = true;
        }
      },
    );
  }

  final Connectivity _connectivity;
  bool _isConnected = false;
  final Logger _logger = Logger("NetworkImpl");

  static Future<NetworkImpl> getAnInstance(
      {required Connectivity connectivity}) async {
    final result = await connectivity.checkConnectivity();

    return NetworkImpl._init(connectivity, result != ConnectivityResult.none);
  }

  @override
  Stream<ConnectivityResult> get connection =>
      _connectivity.onConnectivityChanged;

  @override
  bool get isConnected => _isConnected;
}
