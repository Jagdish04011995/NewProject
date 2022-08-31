trigger two3 on Contact (before insert) {
 List<Account> Listss=new List<Account>();
    Set<id> Sets=new Set<id>(); 
    for(Contact Con:trigger.new){
        Sets.add(Con.AccountId);
    }
    
    
    Map<id,Account> Maps=new Map<id,Account>();
    for(Account Acc:[Select id From Account Where id IN:Sets]){
        Maps.put(Acc.id,Acc);
    }
    
    for(Contact Con:trigger.new){              // {} imp 
    Account Jds= Maps.get(Con.AccountId);
    Jds.Description=Con.Phone;
       update  Jds;
        }
}