trigger OpportunityCount on Opportunity (after insert, after update, after delete, after undelete) {
    List<Account> Listss=new List<Account>(); 
    
    Set<id> Sets=new Set<id>();
    if(trigger.isinsert||trigger.isupdate||trigger.isundelete){
    for(Opportunity Opp:trigger.new){
     Sets.add(Opp.AccountId) ;  
    }
    }
    
    if(trigger.isDelete){
      for(Opportunity Opp:trigger.old){
     Sets.add(Opp.AccountId);  
      }
    }
    
    
    List<Account> Lists=new List<Account>();
    
    for(Account Acc:[Select id,(Select id From Opportunities) From Account Where Id IN :Sets]){
       Lists.add(Acc);
    }
    
    
    for(Account ff:Lists){
       
            
       Account Obje=new Account();
        Obje.Id=ff.Id;
        Obje.Opportunity_Created__c=ff.Opportunities.Size();
        Listss.add(Obje);
        
    }
    {
       update Listss; 
    }
}