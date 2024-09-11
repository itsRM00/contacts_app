import 'package:faker/faker.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../Data/contact.dart';
class ContactsModel extends Model{
   List<Contact> _contacts = List.generate(50, (index) {
     return Contact(
       name: faker.person.firstName() + '' + faker.person.lastName(),
       email: faker.internet.freeEmail(),
       phoneNumber: faker.randomGenerator.integer(100000).toString(),
     );
   });

   List<Contact>get contacts => _contacts;

   void changeFavoriteStatus (int index){
     _contacts[index].isFavorite = !_contacts[index].isFavorite;
     _contacts.sort((a, b) {
       if (a.isFavorite) {
         return -1;
       } else if (b.isFavorite) {
         return -1;
       } else {
         return 0;
       }
     });
   }
}