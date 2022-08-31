trigger OppoLineIteamAddNumberSeries on OpportunityLineItem (before insert) {
Set<id> Sets=new Set<id>();
    For(OpportunityLineItem OOPS:trigger.new){
        Sets.add(OOPS.OpportunityID);
    }
    
    List<OpportunityLineItem> Lists=new List<OpportunityLineItem>([Select id,Serial_No__c From OpportunityLineItem Where OpportunityID IN:Sets]);
    
    For(OpportunityLineItem OOPS:trigger.new){
    if(Lists.Size()>0){
    For(OpportunityLineItem FF:Lists){
        if(FF.Serial_No__c!=null){
            String LastWard =FF.Serial_No__c.right(1);
            integer JD =Integer.valueOf(LastWard);
            JD++;
            OOPS.Serial_No__c=FF.Serial_No__c+','+JD;
        }   
    }
    }
        else{
        OOPS.Serial_No__c='1';
    }
    }

}