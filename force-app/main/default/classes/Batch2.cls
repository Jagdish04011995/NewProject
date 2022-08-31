public class Batch2 Implements Database.Batchable<Sobject> {
    
    
 Public Database.QueryLocator start(Database.BatchableContext BC){
        String JD ='Select id,name From Account where Name= '+'\'Jagdish Sudhir Dahake\'';
        return Database.getQueryLocator(JD);
       }
    
    
    Public Void execute(database.BatchableContext BC,List<Account>Lists){
        
        Delete Lists;
        
    }
    
    
    Public Void finish(Database.BatchableContext BC){
        
    }
}