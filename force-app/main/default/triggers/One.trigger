trigger One on Contact (before insert,before update) {
    Set<id> Sets=new Set<id>();
    for(Contact Con:trigger.new){
       Sets.add(Con.AccountId);
    }
    
    
    List<Account> Lists=new List<Account>();
    for(Account F:[select Phone from Account Where Id IN:Sets]){
        Lists.add(F);
    }
    
    
    for(Account C:Lists){
        for(Contact Con:trigger.new){
           Con.Phone=C.Phone;
            
        }
    }
    
    
}