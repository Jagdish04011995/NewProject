trigger RollUpSummeryTriggerAllEventIsInTrihher on Opportunity (After insert,after update) {
// Importent RollUp Summery trigger 5 IN ONe
  Set<id> Sets=new Set<id>();
    For(Opportunity Opps:trigger.new){
        Sets.add(Opps.AccountId);
    }
    
    
 List<Aggregateresult> Lists=new List<Aggregateresult>();
    For(Aggregateresult ForAgg:[Select AccountId,Count(id),SUM(Amount)Summ,Max(Amount)Maxx,Min(Amount)Minn,Avg(Amount)Avgg from Opportunity 
                                Where AccountId IN:Sets group by AccountId]){
                                    Lists.add(ForAgg);
                                }
    
    For(Aggregateresult FF:Lists){
        String AccId =(String)  FF.get('AccountId');
        Decimal Summm=(Decimal) FF.get('Summ');
        Decimal Maxxx=(Decimal) FF.get('Maxx');
        Decimal Minnn=(Decimal) FF.get('Minn');
        Decimal Avggg=(Decimal) FF.get('Avgg');
        integer Count=(integer) FF.get('expr0');
        
        Account Acc=new Account();
        Acc.id=AccId;
        Acc.Max__c=Maxxx;
        Acc.Min__c=Minnn;
        Acc.Avg__c=Avggg;
        Acc.Opportunity_Created__c=Count;
        Acc.numberField__c=Summm;
        update Acc;
        
        
        
    }
}