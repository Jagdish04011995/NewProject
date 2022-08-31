trigger CountContactOfAccount on Account (before Update) {
    Set<id> Sets=new Set<id>();
    For(Account Acc:Trigger.new){
        Sets.add(Acc.id);
    
        Integer JD =([Select Count() From Contact Where Accountid IN:Sets]);
        
        Acc.Min__c=JD;
        
    }
}