public class BatchCl Implements Database.Batchable<Sobject>{
    
    
 Public Database.QueryLocator start(Database.BatchableContext BC){
        String JD ='Select id,name From Account where Name= '+'\'KKKKK\'';
        return Database.getQueryLocator(JD);
       }
    
    
    Public Void execute(database.BatchableContext BC,List<Account>Lists){
        
        For(Account Acc:Lists){
            Acc.Description='Jagdish';
            Update Acc;
        }
    }
    
    
    Public Void finish(Database.BatchableContext BC){
        
    }
}