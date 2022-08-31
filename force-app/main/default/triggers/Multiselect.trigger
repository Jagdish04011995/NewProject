trigger Multiselect on Opportunity (before update) {
    
    Set<id> Sets=new Set<id>();
    for(Opportunity Opps:trigger.new){
        Sets.add(Opps.AccountId);
    
        if(Opps.MultiSelectPicklistOpportunity__c!=trigger.oldmap.get(Opps.Id).MultiSelectPicklistOpportunity__c){
    
    Account AA=new Account();
    AA.Id=Opps.AccountId;
    AA.MultiSelectPicklistAccount__c=Opps.MultiSelectPicklistOpportunity__c;
        Update AA;
        }
        
        }
    
}