import 'package:hive/hive.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../db_manager_contract.dart';
import '../db_object.dart';

class HiveDbDriver implements DbDriver {
  late Box<Map<dynamic, dynamic>> _database;

  bool _initialized = false;

  final String databaseName;
  final String initialTableName;

  HiveDbDriver({this.databaseName = 'hivedb', this.initialTableName = 'narad'});

  @override
  Future initializeDataBase() async {
    if (_initialized) {
      return;
    }
    final dbPath =
        join((await getApplicationDocumentsDirectory()).path, databaseName);
    Hive.init(dbPath);
    _database = await Hive.openBox<Map<dynamic, dynamic>>(initialTableName);
    _initialized = true;
  }

  @override
  Future write({required String key, required Object value}) async {
    final data = {
      'key': key,
      'data': value,
      'timestamp': DateTime.now().millisecondsSinceEpoch
    };
    return await _database.put(key, data);
  }

  @override
  Future<DbObject?> read({required String key}) async {
    final storedData = _database.get(key);
    if (storedData != null) {
      return DbObject(
          object: storedData["data"], timeStamp: storedData["timestamp"]);
    }
    return null;
  }

  @override
  Future<List<DbObject?>> readAll() async {
    List<DbObject?> allData = [];
    for (var key in _database.keys) {
      final data = await read(key: key);
      if (data != null) allData.add(data);
    }
    return allData;
  }

  @override
  Future clearAll() async {
    await _database.deleteAll(_database.keys);
  }

  @override
  Future<Object?> delete({required key}) async {
    await _database.delete(key);
    return null;
  }
}
