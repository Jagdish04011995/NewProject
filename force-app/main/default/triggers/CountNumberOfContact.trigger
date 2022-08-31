trigger CountNumberOfContact on Contact (after insert, after update, after undelete) {
    
    
 set<id> Sets=new set<id>();    
    if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
    For(Contact CC:trigger.new){
        Sets.add(CC.AccountId);
    }
    }
   
      Integer contactListCount = [Select count() from contact where AccountId IN:Sets];
    For(Contact CC:trigger.new){
        Account Acc=new Account();
         Acc.Id=CC.AccountId;
         Acc.Contact_Created__c=contactListCount;
        update Acc;
    }
    
    
}