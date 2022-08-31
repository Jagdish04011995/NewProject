trigger ContactOpporUpdate on Contact (before Update){                                                          
    
    
    List<Opportunity> Lists=new List<Opportunity>();
        for(Opportunity PP:[Select id From Opportunity]){
            Lists.add(PP);
        }
    
        For(Contact Con:trigger.new){
        For(Opportunity Opps:Lists){
           Opps.Description=Con.FirstName+' '+Con.LastName;
            Update Opps;
        }
    }
}