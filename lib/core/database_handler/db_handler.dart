import 'db_manager_contract.dart';
import 'db_object.dart';

class DataBaseHandler {
  // sqlite or any other db manager
  final DbDriver _driver;
  DataBaseHandler._(DbDriver driver) : _driver = driver;

  static Future<DataBaseHandler> getAnInstance(
      {required DbDriver driver}) async {
    final handler = DataBaseHandler._(driver);
    await handler._driver.initializeDataBase();
    return handler;
  }

  Future<DbObject?> read({required final String key}) {
    return _driver.read(key: key);
  }

  Future<List<DbObject?>> readAll() {
    return _driver.readAll();
  }

  /// write or update string or Map
  Future write({required final String key, required final Object value}) {
    return _driver.write(key: key, value: value);
  }

  Future delete({required final key}) {
    return _driver.delete(key: key);
  }

  Future clearAll() {
    return _driver.clearAll();
  }
}
