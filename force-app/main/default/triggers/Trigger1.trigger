trigger Trigger1 on Contact (before insert, before update) {  //Account chi Contact madhe
Set<id> Sets=new Set<id>();
    For(Contact Con:trigger.new){
       Sets.add(Con.AccountId);
    }
    
    
    List<Account> Lists=new List<Account>();
    For(Account Acc:[Select id,Type,Description From Account Where Id IN:Sets]){
        Lists.add(Acc);
    }
    
    For(Contact Con:trigger.new){
        For(Account A:Lists){
         Con.Description=A.Type;
        }
        

    }
}