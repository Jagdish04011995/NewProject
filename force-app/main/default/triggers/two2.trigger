trigger two2 on Contact (before insert) {
 List<Account> Listss=new List<Account>();
    Set<id> Sets=new Set<id>(); 
    for(Contact Con:trigger.new){
        Sets.add(Con.AccountId);
    }
    
    
    List<Account> Lists=new List<Account>();
    for(Account A:[Select id from Account Where Id IN :Sets]){
        Lists.add(A);
    }
          For(Account U:Lists){
              for(Contact Con:trigger.new){
             Account Ac=new Account();
             Ac.id=U.id;
             Ac.Description=Con.Description;    
             Listss.add(Ac);
              }
          }
    update Listss;
       
}