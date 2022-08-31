trigger DublicateResticOpportunuty on Opportunity (before insert,before update) {
    
    
   Map<Decimal,Opportunity> Maps=new Map<Decimal,Opportunity>();
    
    
    for(Opportunity Opps:trigger.new)
       
    
        if((Opps.Amount!=Null) && (trigger.isinsert || (Opps.Amount!=trigger.oldmap.get(Opps.id).Amount )))    {
            Maps.Put(Opps.amount,Opps);
        
    }
    
    List<Opportunity> Lists=new List<Opportunity>();
    for(Opportunity PP:[select Amount from Opportunity where Amount IN :Maps.keySet()]){
        Lists.add(PP);
    }
    for(Opportunity LL:Lists){
        Opportunity Jagdish=Maps.get(LL.Amount);
        Jagdish.Amount.addError('Dublicate') ;
    }
        
    
    
}