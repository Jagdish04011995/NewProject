trigger UpdateColurTriggerFronUser on Account (before insert,before update) {
set<id> jd=new set<id>();
   for(Account a:trigger.new) 
   jd.add(a.OwnerId);
    
    map<id,user> dj=new  map<id,user>();
    for(User c:[Select id,Favorite_Colur__c from User Where id IN :jd])
    {
        dj.put(c.id,c);
    }
    
    
    for(Account a:trigger.new) 
    a.Acc_Fevorate_Colur__c=dj.get(a.OwnerId).Favorite_Colur__c;
}