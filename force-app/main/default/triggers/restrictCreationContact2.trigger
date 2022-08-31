trigger restrictCreationContact2 on Contact (after insert,before update) {
set<id> Sets=new set<id>();    
    
    For(Contact CC:trigger.new){
        Sets.add(CC.AccountId);
    }
    
   
      Integer contactListCount = [Select count() from contact where AccountId IN:Sets];
      
      if(contactListCount > 2) {
                    for(contact cop : trigger.new) {
                        cop.addError('cannot have more than 2 contacts per account');
                    }
                }
            

}