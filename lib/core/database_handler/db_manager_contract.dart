import 'db_object.dart';

/// db manager works in key-value pair concept
/// this is the contract for manageing database
/// use the implementation classes like [SqliteDbManager]
abstract class DbDriver {
  Future initializeDataBase();

  /// create and update
  Future write({required final String key, required final Object value});

  Future<DbObject?> read({required final String key});

  /// return list of rawJsonString
  Future<List<DbObject?>> readAll();

  /// return true if success else false
  Future delete({required final key});

  /// return true if success else false
  Future clearAll();

  /// if one operation fail all operation should be failed
  // Future multipleCreate(
  //     {required final List<String> keys, required final List<DbObject> values});

  /// return list of rawJsonString
  // Future<List> multipleRead({required final List<String> keys});

  /// return true if success else false
  // Future update({required final String key, required final DbObject newValue});

  /// if one operation fail all operation should be failed
  // Future multipleUpdate(
  //     {required final List<String> keys,
  //     required final List<DbObject> newValues});

  /// if one operation fail all operation should be failed
  // Future multipleDelete({required final List<String> key});

}
