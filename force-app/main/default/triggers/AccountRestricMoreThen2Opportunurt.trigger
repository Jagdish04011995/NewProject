trigger AccountRestricMoreThen2Opportunurt on Opportunity (After insert, After update) {

    Set<id> Sets=new Set<id>();
    For(Opportunity Opps:trigger.new){
        Sets.add(Opps.AccountId);
    }
    
    
    Integer Jagdish=([Select Count() from Opportunity where AccountId IN :Sets]);
        
    if (Jagdish > 2){
        For(Opportunity Opps:trigger.new){
            Opps.addError('Sorry');
        }
        
    }
}