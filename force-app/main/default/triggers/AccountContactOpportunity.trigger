trigger AccountContactOpportunity on Account (After insert,After update) {

        For(Account Acc:trigger.new){
        for(integer i=0;i<Acc.Contact_Created__c;i++){
        Contact Con=new Contact();
        Con.AccountId=Acc.id;
        Con.LastName=Acc.Name+i;
        Insert Con;
        }
    }
        
        For(Account Acc:trigger.new){
        for(integer i=0;i<Acc.Opportunity_Created__c;i++){
        Opportunity Opps=new Opportunity();
        Opps.AccountId=Acc.id;
        Opps.name=Acc.Name+i;
        Opps.CloseDate=Date.today();
        Opps.StageName='Closed Won';
        Insert Opps;
        }
        }
    
}