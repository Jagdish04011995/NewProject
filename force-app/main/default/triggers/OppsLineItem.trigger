trigger OppsLineItem on OppLI__c (before insert) {
    Set<id> Sets=new Set<id>();
    For(OppLI__c Opps:trigger.new){
        Sets.add(Opps.Opportunity__c);
    
    
    
    List<Opportunity> Lists=new List<Opportunity>();
    For(Opportunity OO:[Select id,Total_Quantity__c,Available_Quantity__c from Opportunity where id IN:Sets]){
        Lists.add(OO);
    }
    
    for(Opportunity FF:Lists){
        if(FF.Available_Quantity__c==null) {
            if(FF.Total_Quantity__c < Opps.Products__c){
                Opps.AddError('Sorry Your Total Quantity is less then Products');
            }
            FF.Available_Quantity__c=FF.Total_Quantity__c - Opps.Products__c;
            
            Update FF;
        }else{
            
            if(FF.Available_Quantity__c < Opps.Products__c){
              Opps.AddError('Sorry Your Available Quantity is less then Products');
            }
            FF.Available_Quantity__c=FF.Available_Quantity__c - Opps.Products__c;
            Update FF;
            
        } 
    }
    }
    
}