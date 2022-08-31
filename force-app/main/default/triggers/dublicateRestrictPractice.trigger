trigger dublicateRestrictPractice on Account (before insert,before update) {
  
    
   
      For(Account Acc:trigger.new){
        if((Acc.Phone!=Null) && (trigger.isinsert || (Acc.Phone!=trigger.oldmap.get(Acc.id).Phone ))){  
            List<Account> Lists=new List<Account>([Select id, Phone From Account]);
            for(Account FF:Lists){
             If(Acc.Phone==FF.phone){
             Acc.Phone.addError('Dublicate record');                
            
             }
                
            }
         
        }
}
    
    
    For(Account Acc:trigger.new){
        if((Acc.Website!=Null) && (trigger.isinsert || (Acc.Website!=trigger.oldmap.get(Acc.id).Website ))){  
            List<Account> Listss=new List<Account>([Select id, Website From Account]);
            for(Account FF:Listss){
             If(Acc.Website==FF.Website){
             Acc.Website.addError('Dublicate record');                
            
             }
                
            }
         
        }
}
}