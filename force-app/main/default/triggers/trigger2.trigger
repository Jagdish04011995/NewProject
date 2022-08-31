trigger trigger2 on Contact (before insert, before update) {  //Contact Chi Account Madhe
 List<Account> Listss=new List<Account>();  
Set<id> Sets=new Set<id>();
    For(Contact Con:trigger.new){
       Sets.add(Con.AccountId);
    }
    
    List<Account> Lists=new List<Account>();
    For(Account Acc:[Select id From Account Where Id IN:Sets]){
        Lists.add(Acc);
    }
    
    For(Account AC:Lists){
    For(Contact Con:trigger.new){
    Account AA=new Account();
    AA.Id=AC.id;
    AA.Description=Con.Phone;
        Listss.add(AA);
        }
        
        Update Listss;
        }
    
}