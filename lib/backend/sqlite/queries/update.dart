import 'package:sqflite/sqflite.dart';

/// BEGIN INSERTCUSTOMER
Future performInsertcustomer(
  Database database, {
  String? name,
  String? address,
  String? country,
}) {
  final query = '''
INSERT INTO customers (name, address, city) VALUES ($name ,$address ,$country )
''';
  return database.rawQuery(query);
}

/// END INSERTCUSTOMER
