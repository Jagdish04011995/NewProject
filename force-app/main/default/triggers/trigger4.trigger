trigger trigger4 on Account (before update) {  //Contact Chi Account Madhe pan update madhe 
    Set<id> Sets=new Set<id>();                 // aani update ulta karachi garaj nahi karan agodarch kela aahe
    For(Account Acc:trigger.new){
      Sets.add(Acc.id);
    }
    
    
  List<Contact> Lists=new List<Contact>();
    for(Contact Con:[Select id,Phone From Contact Where AccountID IN:Sets]){
        Lists.add(Con);
    }
    
    For(Account Acc:trigger.new){
        for(Contact CC:Lists){
        Acc.Description=CC.Phone;
        Acc.Phone='2595262';
            
        }
        
    }
}