@isTest
public class TestOverwriteTestAccountDescriptions {

    
    public Static Testmethod void VerifyAccountDiscriptionWhereOverWritten(){
        List<Account> jagdish=new List<Account>();
        for(integer i=1;i<10;i++){
            Account jd=new Account(Name='Jagdish123');
            jagdish.add(jd);
            
        }
        
        Test.startTest();
        
       insert  jagdish;  
        
        Test.stopTest();
        
        List<Account>InsertAccount=[Select Name,Description From Account Where ID IN:jagdish];
        
        for(Account a:InsertAccount){
            system.assertEquals('Description ok.',a.Description);
        
        
    }
    
}
}