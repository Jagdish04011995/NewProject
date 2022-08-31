public class BatchDelete implements Database.Batchable<sObject>  {
    
    
Public Database.QueryLocator Start(Database.BatchableContext JD){
        
        String DJ='Select ID From Employe_Management__c';
        Return Database.GetQueryLocator(DJ);
    }
    
    
    Public Void Execute(Database.BatchableContext JD,List<Employe_Management__c>Lists){
       
        
        delete Lists;
    }
    
    Public void Finish(Database.batchableContext JD){
        BatchCl EE=new BatchCl();
        Database.executeBatch(EE);
        
        Batch3 JDs=new Batch3();
        Database.executeBatch(JDs);
        
        
    }
    
}