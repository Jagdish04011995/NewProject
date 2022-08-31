trigger MinMaxAvg on Opportunity (before insert) {
    Set<id> Sets=new Set<id>();
    For(Opportunity Con:trigger.new){
        Sets.add(Con.AccountId);
    }
    
    Map<id,Account> Lists=new Map<id,Account>();
    For(Account Acc:[Select id,(Select id from Opportunities) From Account Where Id IN:Sets]){
        Lists.Put(Acc.Id,Acc);
    }
    
    
        For(Opportunity Con:trigger.new){
         Account HH=Lists.get(Con.AccountId);
            HH.Opportunity_Created__c=Lists.get(Con.AccountId).Opportunities.Size();
            update HH;
          
    }
}