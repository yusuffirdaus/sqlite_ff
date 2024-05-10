import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GET ALL CUSTOMERS
Future<List<GetAllCustomersRow>> performGetAllCustomers(
  Database database,
) {
  const query = '''
SELECT * FROM customers;
''';
  return _readQuery(database, query, (d) => GetAllCustomersRow(d));
}

class GetAllCustomersRow extends SqliteRow {
  GetAllCustomersRow(super.data);

  String get name => data['name'] as String;
  String? get address => data['address'] as String?;
  String? get city => data['city'] as String?;
  int? get id => data['id'] as int?;
}

/// END GET ALL CUSTOMERS
