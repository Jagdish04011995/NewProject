trigger SecoundPractice on Opportunity (After insert) {
List<Account> accc= new List<Account>();  
Set<id> Sets= new Set<id>();
    for(Opportunity Opp:trigger.new)
    {
        Sets.add(Opp.AccountId);
    }
       
    
    
    Map<id,Account> Maps=new Map<id,Account>();
    for(Account Acc:[Select id,Rating from Account WHERE id IN:Sets]){
        Maps.put(Acc.id, Acc);
    }
        
    
    
  for(Opportunity Opp:trigger.new)
  {
   Account Jagdish=Maps.get(Opp.AccountId);  
   Jagdish.Description=Opp.Type;
   accc.add(Jagdish);
  }
    
    
        update(accc);  
  }