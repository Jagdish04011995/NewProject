trigger ThirdPractice on Account (After insert) {
    
    List<Account> dd=new List<Account>();
    set<id> Sets=new  set<id>();
    For(Account Acc:trigger.new)
    
       Sets.add(Acc.id);
    
        
        Map<id,Account> Maps= new  Map<id,Account>();
         for(Account Accc:[Select id from Account WHERE id IN :Sets])
             Maps.put(Accc.id, Accc);

    
    
    For(Account Acc:trigger.new)
    {
    Account Jagdish1=Maps.get(Acc.id);
    Jagdish1.Description=Acc.Acc_Fevorate_Colur__c;
    dd.add(Jagdish1);
}

    update(dd);

}