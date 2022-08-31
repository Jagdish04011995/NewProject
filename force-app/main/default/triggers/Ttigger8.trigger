trigger Ttigger8 on Contact (before insert) {
    List<Account> PP=new List<Account>();
    For(Contact Con:trigger.new){
    Account Acc=new Account();
    Acc.Name=Con.FirstName;
    Acc.Description='AccountDescriptions';
    
    
    PP.add(Acc);
    }

    {
        insert PP;
    }
    
   
    List<Account> Lists=new List<Account>();
    for(Account AA:[select id,Name From Account where id IN :PP]){
        Lists.add(AA);
    }
    
    
    
    
    For(Contact Con:trigger.new){
        for(Account XX:Lists){
          Con.AccountId=XX.id; 
           
        }
        
    }
}