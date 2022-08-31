trigger PicklistPopulateByAccountContact on Contact (before insert,before update,before Delete) {
    Set<id> Sets=new Set<id>();
    if(trigger.isdelete){
           for(Contact Con:trigger.old){
           Sets.add(Con.AccountId);
        
        List<Account> Lists=new List<Account>();
        for(Account Acc:[select id,Max__C,Min__C,Avg__C From Account Where id IN:Sets]){
            Lists.add(Acc);
        }
            if(Con.Status__c == 'Draft'){
                For(Account FF:Lists){
                    
                FF.Max__C=FF.Max__c-1;
                    update FF;
                }
              
            }
               
              if(Con.Status__c == 'InProgress'){
                For(Account FF:Lists){
                    
                FF.Min__C=FF.Min__c-1;
                    update FF;
                }
              
            } 
               
               
               if(Con.Status__c == 'Completed count'){
                For(Account FF:Lists){
                    
                FF.Avg__c=FF.Avg__c-1;
                    update FF;
                }
              
            } 
               
            
        }
      }
    
    if(trigger.isinsert ){
           for(Contact Con:trigger.new){
           Sets.add(Con.AccountId);
        
        List<Account> Lists=new List<Account>();
        for(Account Acc:[select id,Max__C,Min__C,Avg__C From Account Where id IN:Sets]){
            Lists.add(Acc);
        }
            if(Con.Status__c == 'Draft'){
                For(Account FF:Lists){
                    if(FF.Max__c==null){
                        FF.Max__c=0;
                    }
                FF.Max__C=FF.Max__c+1;
                    update FF;
                }
              
            }
               
              if(Con.Status__c == 'InProgress'){
                For(Account FF:Lists){
                    if(FF.Min__c==null){
                        FF.Min__c=0;
                    }
                FF.Min__C=FF.Min__c+1;
                    update FF;
                }
              
            } 
               
               
               if(Con.Status__c == 'Completed count'){
                For(Account FF:Lists){
                    if(FF.Avg__c==null){
                        FF.Avg__c=0;
                    }
                FF.Avg__c=FF.Avg__c+1;
                    update FF;
                }
              
            } 
               
            
        }
    }
    
    
    for(Contact Con:trigger.new){
    
    
     if(trigger.isUpdate && Con.Status__c!=trigger.oldmap.get(Con.Id).Status__c){
               
           Sets.add(Con.AccountId);
        
        List<Account> Lists=new List<Account>();
        for(Account Acc:[select id,Max__C,Min__C,Avg__C From Account Where id IN:Sets]){
            Lists.add(Acc);
            
            
            
            
        }
            if(Con.Status__c == 'Draft'){
                For(Account FF:Lists){
                    if(FF.Max__c==null){
                        FF.Max__c=0;
                    }
                FF.Max__C=FF.Max__c+1;
                    update FF;
                }
              
            }
               
              if(Con.Status__c == 'InProgress'){
                For(Account FF:Lists){
                    if(FF.Min__c==null){
                        FF.Min__c=0;
                    }
                FF.Min__C=FF.Min__c+1;
                    update FF;
                }
              
            } 
               
               
               if(Con.Status__c == 'Completed count'){
                For(Account FF:Lists){
                    if(FF.Avg__c==null){
                        FF.Avg__c=0;
                    }
                FF.Avg__c=FF.Avg__c+1;
                    update FF;
                }
              
            } 
               
            
        }
    }
  
}