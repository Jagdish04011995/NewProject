trigger two on Contact (before insert,before update) {
    Set<id> Sets=new Set<id>(); 
    for(Contact Con:trigger.new){
        Sets.add(Con.AccountId);
    }
    
    
    List<Account> Lists=new List<Account>();
    for(Account A:[Select id from Account Where Id IN :Sets]){
        Lists.add(A);
    }
    
             For(Account AA:Lists){
             for(Contact Con:trigger.new){
             AA.Description=Con.Description;
                 Update AA;
            
        }    
    }
    
        
}