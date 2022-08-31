public class Forth {
@AuraEnabled
    public static List<contact> getcontactList(){
        List<contact> contactList=[select Firstname from Contact];
        return contactList;
    }
}