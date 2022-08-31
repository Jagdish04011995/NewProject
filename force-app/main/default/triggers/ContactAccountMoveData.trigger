trigger ContactAccountMoveData on Contact (before insert) {
Set<id> Sets=new Set<id>();
    For(Contact Con:trigger.new){
        Sets.add(Con.id);
        
    }
    
    
    For(Contact Con:trigger.new){
    Account Acc=new Account();
    Acc.Name=Con.Name;
      Con.AccountId=Acc.Id; 
    }
}