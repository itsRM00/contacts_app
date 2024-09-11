import 'package:contacts_app/UI/Model/contacts_model.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../Data/contact.dart';
import 'contact_tile.dart';

class ContactsListPage extends StatefulWidget {
  @override
  State<ContactsListPage> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsListPage> {

 @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Contacts"),
      ),
      body: ScopedModelDescendant<ContactsModel>(
        builder: (context,child,model) {
          return ListView.builder(
            itemCount: model.contacts.length,
            itemBuilder: (context, index) {
              return ContactTile(contactIndex: index,
                

              );
            },
          );
        }


      ),
    );
  }
}
