trigger trigger7 on Contact (before insert,before update) {
set<id> Sets=new set<id>();
    For(Contact Acc:trigger.new){
        Sets.add(Acc.AccountId);
    }
    
    List<Account> Lists=new List<Account>();
    for(Account Con:[select id,Phone From Account where id IN :Sets]){
        Lists.add(Con);
    }
    
    
    for(Account CC:Lists){
        CC.Description=CC.Phone;
        update CC;
}
}