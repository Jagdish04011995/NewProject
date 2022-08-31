Global class BatchApexExample implements Database.Batchable<sObject> {
    Global Database.QueryLocator start(Database.BatchableContext BC){
        String query='Select id,name from Account';
        return Database.getQueryLocator(query);
    }
    
    Global Void execute(Database.BatchableContext BC,list <Account> acclist){
        
        For(Account j:acclist){
            
          j.name=j.name+'112'; 
        }
        
        try{
         update  acclist;    
        }catch(Exception e){
            System.debug('e');
    }
    }  
        Global Void finish(Database.BatchableContext BC) {
            
        }
        
    }