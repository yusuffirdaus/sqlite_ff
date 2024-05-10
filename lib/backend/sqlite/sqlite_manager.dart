import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'testdb',
      'test_ff.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<GetAllCustomersRow>> getAllCustomers() => performGetAllCustomers(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future insertcustomer({
    String? nameparam,
    String? address,
    String? country,
  }) =>
      performInsertcustomer(
        _database,
        nameparam: nameparam,
        address: address,
        country: country,
      );

  Future deleteCustomers({
    int? id,
  }) =>
      performDeleteCustomers(
        _database,
        id: id,
      );

  Future updateCustomers({
    int? id,
    String? name,
    String? address,
    String? country,
  }) =>
      performUpdateCustomers(
        _database,
        id: id,
        name: name,
        address: address,
        country: country,
      );

  /// END UPDATE QUERY CALLS
}
