
import 'package:bytebank2/database/app_database.dart';
import 'package:bytebank2/models/contact.dart';
import 'package:sqflite/sqflite.dart';

class ContactDao {

  Future<int> save(Contact contact) async {
    final Database db = await getDatabase();

    final Map<String, dynamic> contactMap = Map();
    contactMap['name'] = contact.name;
    contactMap['account_number'] = contact.accountNumber;
    return db.insert('contacts', contactMap);
  }

  Future<List<Contact>> findAll() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> result = await db.query('contacts');

    final List<Contact> contacts = [];
    for (Map<String, dynamic> row in result) {
      final Contact contact = Contact(
        row['id'],
        row['name'],
        row['accountNumber'] ?? 0,
      );
      contacts.add(contact);
    }
    return contacts;
  }
}