public class NewClass {

    private final Account account;

    public NewClass() {
        account = [SELECT Id, Name, Site FROM Account 
                   WHERE Id ='0015j00000g41JuAAI'];
    }

    public Account getAccount() {
        return account;
    }

    public PageReference save() {
        update account;
        return null;
    }
}