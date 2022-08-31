trigger Three on Account (before update) {
    
    Set<id> Sets=new Set<id>();
    For(Account Acc:trigger.new){
        Sets.add(Acc.Id);
    }
    
    List<contact> Lists=new List<contact>();
    for(Contact Con:[Select id,Phone From Contact  where AccountId IN:Sets]){
        Lists.add(Con);
    }
    
    for(Contact AA:Lists){
        For(Account Acc:trigger.new){
          Acc.Phone=AA.Phone;
            
        }
        
    }
         
}