trigger OLIInsertByOppo on Opportunity (After insert) {

    For(Opportunity OO:Trigger.new){
 
        OpportunityLineItem OPPS=new OpportunityLineItem();
        OPPS.OpportunityId=OO.Id;
        OPPS.Product2Id='01u5j000002amWVAAY';
        OPPS.Quantity=5;
        OPPS.UnitPrice=100;
        OPPS.PricebookEntryId='01s5j000005Z6PVAA0';
        Insert OPPS;
    }
 
}