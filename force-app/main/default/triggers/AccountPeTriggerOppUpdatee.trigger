trigger AccountPeTriggerOppUpdatee on Opportunity (after insert) {
List<Account> lists=new List<Account>();
    
    set<id> Sets=new set<id>();
    for(Opportunity aa:trigger.new)
    Sets.add(aa.AccountId);
    
    
    map<id,Account> Opp=new map<id,Account>();
    for(Account ll:[Select id,Website From Account Where id IN :Sets])
        {
            Opp.put(ll.id, ll);
        }
    
    for(Opportunity aa:trigger.new)
        
    {
        Account jagdish=Opp.get(aa.AccountId);
        jagdish.Description=Opp.get(aa.AccountId).website;
        lists.add(jagdish);
    }
   
    
    {
   update lists;
    }
}