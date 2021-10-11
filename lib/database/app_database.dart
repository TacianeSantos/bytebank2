import 'dart:async';

import 'package:bytebank2/models/contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/contact.dart';


Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'bytebank2.db');
  return openDatabase(path, onCreate: (db, version){
        db.execute('CREATE TABLE contacts('
          'id INTEGER PRIMARY KEY, '
            'name TEXT, '
            'account_number INTEGER) ');
      }, version: 1,
       //onDowngrade: onDatabaseDowngradeDelete,
      );
}
