trigger RollUpSummeryTrigerPractiice on Opportunity (After insert, After update) {
Set<id> Sets=new Set<id>();
    For(Opportunity Opps:trigger.new){
         Sets.add(Opps.AccountId);
        
       
        
List<Aggregateresult> Rollss=new List<Aggregateresult>();
        For(Aggregateresult Opp:[Select Count(id),Sum(Amount)Summ,Max(Amount)Maxx,Min(Amount)Minn,Avg(Amount)Avgg From Opportunity Where AccountID IN: Sets Group by AccountID]) {
            Rollss.Add(Opp);
        }       
        
        For(Aggregateresult FF:Rollss){
            
            Decimal Summm =(Decimal)FF.get('Summ');
            Decimal Maxxx=(Decimal)FF.get('Maxx');
            Decimal Minnn=(Decimal)FF.get('Minn');
            Decimal Avggg=(Decimal)FF.get('Avgg');
            Integer Count=(integer)FF.get('expr0');

        
        Account Acc=new Account();
        Acc.id=Opps.Accountid;
        Acc.Contact_Created__c=Summm;
        Acc.Max__c=Maxxx;
        Acc.Min__c=Minnn;
        Acc.Avg__c=Avggg;
        Acc.Opportunity_Created__c=Count;
        Update Acc;
        
        }
    }
}