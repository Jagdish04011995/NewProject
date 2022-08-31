trigger trigger6 on Account (before update) {
    set<id> Sets=new set<id>();
    For(Account Acc:trigger.new){
        Sets.add(Acc.Id);
    }
    
    List<Contact> Lists=new List<Contact>();
    for(Contact Con:[select id,Phone From Contact where AccountID IN :Sets]){
        Lists.add(Con);
    }
    
    
    for(Contact CC:Lists){
        CC.Description=CC.Phone;
        update CC;
    }
}