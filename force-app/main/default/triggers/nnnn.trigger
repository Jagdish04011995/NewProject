trigger nnnn on Opportunity (before update) {
   Set<id> Sets=new Set<id>();
    For(Opportunity Opps:trigger.new){
        Sets.Add(Opps.AccountId);
        
        
        
List<List<Sobject>> Lists=new List<List<Sobject>>([FIND 'Jagdish' IN All Fields Returning Account,Opportunity]);
       
        
        Account[] ResultsAccount=(Account[])Lists[0];
        Opportunity[] ResultsOppo=(Opportunity[])Lists[1];
        
        
        integer JD=ResultsOppo.size();
        
        Opps.Amount=JD;
        
        
    }
}