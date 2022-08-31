trigger AccountContactOppCreatedAsPerParameters on Account (After insert) {
    List<Contact> Lists=new List<Contact>();
    List<Opportunity> Listss=new List<Opportunity>();
    Set<id> Sets=new Set<id>();
    For(Account Acc:trigger.new)
{
    Sets.add(Acc.Id);
}
    
    
    
    Map<id,Account> Maps=new Map<id,Account>();
    for(Account ff:[Select id,Contact_Created__c,Opportunity_Created__c From Account Where id IN:Sets])
    {
        Maps.put(ff.id, ff);
    }
    
    
    
    For(Account Acc:trigger.new)
    for(integer i=0;i<Maps.get(Acc.Id).Contact_Created__c;i++)
    {
      Contact Con=new Contact();
        Con.AccountId=Acc.Id;
        Con.LastName=Acc.Name;
        Lists.add(Con);
    }
    insert Lists;
    {
        
    }
    
    
      
    
    For(Account Acc:trigger.new)
    for(integer i=0;i<Maps.get(Acc.Id).Opportunity_Created__c;i++)
    {
      Opportunity Opps=new Opportunity();
        Opps.AccountId=Acc.Id;
        Opps.Name=Acc.Name;
        Opps.CloseDate=date.today();
        Opps.StageName='Prospecting';
        Listss.add(Opps);
    }
    insert Listss;
    {
    }
      
}