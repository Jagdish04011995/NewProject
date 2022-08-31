trigger ContactCreatAccountUpdateWithCondition on Contact (before update,before insert) {
    List<Account> Lists=new List<Account>();
    Set<id> Sets=new Set<id>();
    for(Contact Con:trigger.new){
        Sets.add(Con.AccountId);
    }
    
    
    Map<id,Account> Maps=new Map<id,Account>();
    for(Account Acc:[select id From Account Where id IN:Sets]){
        Maps.put(Acc.id, Acc);
    }
     
    
    for(Contact Con:trigger.new){
    Account Dahake = Maps.get(Con.AccountId);
    Dahake.Phone=Con.Phone;
        if(Dahake.Phone == Null)
        Lists.add(Dahake);
        }
    {
        update Lists;
    }
}