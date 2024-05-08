import 'package:sqflite/sqflite.dart';

/// BEGIN INSERTCUSTOMER
Future performInsertcustomer(
  Database database,
) {
  const query = '''
INSERT INTO customers (name, address, city) VALUES ('John', '555 Main St', 'New York')
''';
  return database.rawQuery(query);
}

/// END INSERTCUSTOMER
