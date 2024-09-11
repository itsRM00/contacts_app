import 'package:contacts_app/UI/Contact%20List/contacts_list_page.dart';
import 'package:contacts_app/UI/Model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ContactsModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contacts',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: ContactsListPage(),
      ),
    );
  }
}
