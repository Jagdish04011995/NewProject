trigger UpdateContactAsAccountPhone on Account (before update) {

    Set<id> Sets=new Set<id>();
    For(Account Acc:trigger.new){
        Sets.add(Acc.id);
    }
    
    
    List<Contact> Lists=new List<Contact>();
    For(Contact Con:[Select id From Contact Where AccountId IN:Sets]){
        Lists.add(Con);
    }
    
     For(Account Acc:trigger.new){
         if(Acc.Phone!=trigger.oldmap.get(Acc.Id).Phone){
             For(Contact FF:Lists){
                Contact CC=new Contact();
                CC.Id=FF.id;
                 CC.Phone=Acc.Phone;
                 update CC;
             }
             
         }
     }
}