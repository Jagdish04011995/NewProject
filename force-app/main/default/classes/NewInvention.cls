public class NewInvention {
    Public Static Void Method(List<Account>jj){
    integer  jagdish= [select count() from account];
        for(Account a:jj){
    a.Total_Records_of_Account__c = jagdish;   
    }
}
}