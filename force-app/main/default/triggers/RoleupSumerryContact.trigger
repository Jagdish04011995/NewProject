trigger RoleupSumerryContact on Contact (before update) {
Set<id> Sets=new Set<id>();
    For(Contact Con:trigger.new){
        Sets.add(Con.AccountId);
    }
    
    Map<id,Account> Lists=new Map<id,Account>();
    For(Account Acc:[Select id,(Select id from Contacts) From Account Where id IN:Sets]){
        Lists.Put(Acc.Id,Acc);
    }
    
    
        For(Contact Con:trigger.new){
         Account HH=Lists.get(Con.AccountId);
            HH.Contact_Created__c=Lists.get(Con.AccountId).Contacts.size();
            update HH;
          
    }
}