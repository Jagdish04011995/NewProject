public class AccountPegination {
private final account acct;
    public AccountPegination(apexpages.StandardSetController controller){
         this.acct= (Account)controller.getRecord();
    }
    public ApexPages.StandardSetController accountrecords{
      get  {
          if(accountrecords==null){
     accountrecords= new ApexPages.StandardSetController
    (Database.getQueryLocator([Select Name FROM Account WHERE Id NOT IN 
                               (Select AccountId FROM Opportunity WHERE IsClosed =true)]));
              
          }
           return  accountrecords;
        }
        private set;
    }
    public List<Account> getAccountPegination1(){
        return (List<Account>)accountrecords.getRecords();
        
    }
      
}