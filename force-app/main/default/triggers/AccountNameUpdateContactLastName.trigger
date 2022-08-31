trigger AccountNameUpdateContactLastName on Account (before update) {
Set<id> Sets=new Set<id>();
    For(Account Acc:trigger.new){
        Sets.add(Acc.Id);
    }
    
    List<Contact> Lists=new List<Contact>();
    for(Contact Con:[Select id From Contact Where AccountId IN:Sets]){
        Lists.add(Con);
    }
    
    
    Contact CC=new Contact();
    For(Account Acc:trigger.new){
    for(Contact FF:lists){
        CC.Id=FF.id; 
        CC.LastName=Acc.Name;
        Update CC;
    }
    }
   
}