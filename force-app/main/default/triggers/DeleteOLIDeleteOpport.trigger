trigger DeleteOLIDeleteOpport on OpportunityLineItem (After Delete) {
    Set<id> Sets=new Set<id>();
    For(OpportunityLineItem OOPS:trigger.old){
        Sets.add(OOPS.OpportunityId);
        
        List<OpportunityLineItem> Lists=new List<OpportunityLineItem>([Select id From OpportunityLineItem Where OpportunityID IN:Sets]);
        
        
        if(Lists.Size()==0){
        Opportunity OP=new Opportunity();
        OP.id=OOPS.OpportunityID;
        Delete OP;
        }
    }
}