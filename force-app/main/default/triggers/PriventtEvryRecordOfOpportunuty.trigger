trigger PriventtEvryRecordOfOpportunuty on Opportunity (before Delete) {
    Set<id> Sets=new Set<id>();
    For(Opportunity Opp:trigger.old){
        Sets.add(Opp.AccountId);
    
     
        if (Opp.AccountId!=Null){  
        
        trigger.oldmap.get(Opp.id).addError('No means No');
            }
        }
    }