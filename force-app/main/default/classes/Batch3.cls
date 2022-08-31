public class Batch3 implements Database.Batchable<sObject> {
Public Database.QueryLocator start(Database.BatchableContext BC){
        String JD ='Select id,name From Account where Name= '+'\'DahakeJI\'';
        return Database.getQueryLocator(JD);
       }
    
    
    Public Void execute(database.BatchableContext BC,List<Account>Lists){
        
        For(Account Acc:Lists){
            Acc.Description='DahakeJI';
            Update Acc;
        }
    }
    
    
    Public Void finish(Database.BatchableContext BC){
        
    }
}