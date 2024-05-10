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

/// BEGIN DELETE CUSTOMERS
Future performDeleteCustomers(
  Database database, {
  int? id,
}) {
  final query = '''
delete from customers where id = $id
''';
  return database.rawQuery(query);
}

/// END DELETE CUSTOMERS
