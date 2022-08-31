trigger ContactIdPopulate on Contact (Before update) {
    List<Account> Accc=new List<Account>();
    Set<id> Sets=new Set<id>();
    For(Contact Con:trigger.new){
        Sets.add(Con.AccountId);
    }
    
    
    Map<id,Account> Maps=new Map<id,Account>();
    for(Account fcon:[Select id From Account Where id IN :Sets]){
        Maps.put(fcon.id, fcon);
    }
    
    For(Contact Con:trigger.new){
     Account Jd=Maps.get(Con.AccountId);  
     Jd.Acc_Fevorate_Colur__c=Con.Id;
        Accc.add(jd);
    }
    {
        update Accc;
    }
}