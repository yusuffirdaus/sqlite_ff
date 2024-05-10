import 'package:sqflite/sqflite.dart';

/// BEGIN INSERTCUSTOMER
Future performInsertcustomer(
  Database database, {
  String? nameparam,
  String? address,
  String? country,
}) {
  final query = '''
INSERT INTO customers (name, address, city) VALUES ('$nameparam' ,'$address' ,'$country ');
''';
  return database.rawQuery(query);
}

/// END INSERTCUSTOMER
