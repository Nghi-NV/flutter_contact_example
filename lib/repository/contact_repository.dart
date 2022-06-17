import 'dart:convert';

import 'package:contacts/model/contact.dart';
import 'package:http/http.dart' as http;
import 'package:logger_console/logger_console.dart';

abstract class ContactRepository {
  Future<List<Contact>> getContacts();
}

class ContactRepositoryImpl implements ContactRepository {
  @override
  Future<List<Contact>> getContacts() async {
    const String baseUrl = 'http://127.0.0.1:3001';
    const String urlPath = '/api/contacts';
    final url = Uri.parse(baseUrl + urlPath);

    var response = await http.get(url);

    try {
      List<Contact> contacts = [];
      final modelData = json.decode(response.body) as List;
      // modelData.map((contact) => contacts.add(Contact.fromJson(contact)));
      for (int index = 0; index < modelData.length; index++) {
        contacts.add(Contact.fromJson(modelData[index]));
      }
      Console.log("response", modelData);
      Console.log("contacts", contacts);

      return contacts;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
