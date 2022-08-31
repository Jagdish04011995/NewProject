public class FinalClassAura {
@AuraEnabled
    public static List<Contact> getcontactList(){
        List<Contact> ContactList=[select id,Firstname,Lastname,Email,phone,AccountId from Contact limit 30];
        return ContactList;
    }
}