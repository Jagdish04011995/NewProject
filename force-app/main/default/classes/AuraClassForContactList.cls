public class AuraClassForContactList {
@AuraEnabled
    public static List<contact> getcontactList(){
        List<contact> contactList=[select id,Firstname,Lastname,Email,phone,AccountId from Contact limit 10];
        return contactList;
    }
}