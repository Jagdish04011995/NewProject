trigger RollUpSum on Contact (before insert) {
Set<id> Sets=new Set<id>();
    For(Contact Con:trigger.new){
        Sets.add(Con.AccountId);
    }
    
    
    List<Account> Lists=new List<Account>();
    for(Account Acc:[select Contact_Created__c from Account where id in:Sets]){
        Lists.add(Acc);
    }
    
    for(Account AA:Lists){
       For(Contact Con:trigger.new){
       Account CC=new Account();
       Con.numberField__c +=CC.Contact_Created__c;
        update CC;
         }
    }
    
}