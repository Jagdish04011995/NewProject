trigger LeadAccounContactOppo on Lead (After insert) {

    For(Lead LL:trigger.new){
    
    Account Acc=new Account();
    Acc.Name=LL.FirstName +' '+LL.LastName;
        insert Acc;
        
        Contact Con=new Contact();
        Con.AccountId=Acc.Id;
        Con.FirstName=LL.FirstName;
        Con.LastName=LL.LastName;
        Insert Con;
        
        opportunity Opps=new opportunity();
        Opps.AccountId=Acc.Id;
        Opps.name=LL.FirstName +' '+LL.LastName;
        Opps.CloseDate=Date.toDay();
        Opps.StageName='Closed Won';
        insert Opps;
        
        
        
        }
}