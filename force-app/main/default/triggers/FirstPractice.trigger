trigger FirstPractice on Contact (before insert,before update) {
Set<id> Sets= new Set<id>();
    for(Contact jd:trigger.new)
       Sets.add(jd.Accountid);
    
    
    List<Account> Lists=new List<Account>();
    For(Account Acc:[Select id,Rating From Account Where id IN :Sets]){
        Lists.add(Acc);
    }
    
    // we can used both Function Maps List
    
    //Map<id,Account> Maps= new Map<id,Account>();
   // for(Account Acc:[Select id,Rating from Account Where Id IN:Sets])
       // Maps.put(Acc.id, Acc);
    
    //for(Contact jd:trigger.new){
        //for(Account hh:Lists){
       // jd.Title=Maps.get(jd.AccountId).Rating;
    
    
    for(Contact jd:trigger.new){
        for(Account hh:Lists){
        jd.Title=hh.Rating;
        }
    }
    
}