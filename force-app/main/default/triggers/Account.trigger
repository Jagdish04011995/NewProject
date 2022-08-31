trigger Account on Account (before update) {
 List<Account> Accc=new List<Account>();
    Set<id> Sets=new Set<id>();
    for(Account Acc:trigger.old){
       Sets.add(Acc.id) ;
    }
 
    
    
     List<Account> ConList=new List<Account>([Select id,Phone,(Select id,Phone from Contacts) From Account Where id IN :Sets]);
        
         for(Account Acc:trigger.old)   
         For(Account jd:ConList){
            
            
        }
    
    }