public class AuraContactList {
@AuraEnabled
    Public Static List<Contact> getContactList(){
    List<Contact> ContactList=[Select Id,FirstName From Contact limit 10];
        return ContactList;
}
}