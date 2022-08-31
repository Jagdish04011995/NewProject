public class ClassAme {
 @AuraEnabled
    Public static List<Contact> getContactList(){
     List<Contact> ContactList=[Select Id,Firstname,Lastname,Email,phone,AccountId from Contact Limit 10];
     return ContactList;
    }
}