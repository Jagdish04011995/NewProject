trigger PriventtEvryRecordOfOpportunutyAmmuntWice on Opportunity (before Delete) {
    Set<id> Sets=new Set<id>();
    For (Opportunity Opps:trigger.old){
        Sets.add(Opps.Id);
    }
    
    
    List<Decimal> Lists=new List<Decimal>();
    for(Opportunity FF:[Select id,Amount from Opportunity where id IN:Sets]){
        Lists.add(FF.Amount);
    }
    For (Opportunity Opps:trigger.old){
    for(Decimal KK:Lists)
    if(KK>10000){  
        trigger.oldmap.get(Opps.id).addError(' Sorry Your Amount is More Then 10000');
          }
        else{
        if (Opps.AccountId!=Null){
        
        trigger.oldmap.get(Opps.id).addError(' Sorry Check Account relation');
        }
        }
    
    }
    
}