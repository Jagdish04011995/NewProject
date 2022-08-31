trigger ContactupdatecollectallopportunityAmount on Contact (before update) {
    
   
    
    Set<id> Sets=new Set<id>();
    For(Contact Con:trigger.new){
    Sets.add(Con.AccountId);
    }
    
   
    List<Aggregateresult> Lists=new List<Aggregateresult>();
    for(Aggregateresult AA:[Select Sum(Amount)Summ From Opportunity Where AccountID IN:Sets group by AccountID]){
        Lists.add(AA);
    }
    
    For(Aggregateresult FF:Lists){
        
     Decimal Summm =(Decimal)FF.get('Summ');
      
    For(Contact Con:trigger.new){
    Account Acc=new Account();
    Acc.Id=Con.AccountID;
    if(Acc.Avg__c!=Summm){
     Acc.Avg__c=Summm;
     Update Acc;
        }
        
    }
        }
 
}