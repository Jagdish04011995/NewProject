trigger ProductTotalQuaAvailQuan on OpportunityLineItem (before insert) {
    
    Set<id> Sets=new Set<id>();
    For(OpportunityLineItem OLI:Trigger.new){
        Sets.add(OLI.Product2Id);
        
        
    List<Product2> Lists=new List<Product2>([Select id,Total_Quantity__c,Available_Quantity__C From Product2 Where ID IN:Sets]);
      
        
        For(Product2 FF:Lists){
            
        if(FF.Available_Quantity__c == null){
            
        if(FF.Total_Quantity__c>=OLI.Quantity){
            
        FF.Available_Quantity__c=FF.Total_Quantity__c - OLI.Quantity;
          Update FF;
        } 
            Else{
            OLI.addError('Sorry...your O.L.I. Quatity is more then total Quantity');
        } 
        }  
            
            
            Else{
            if(FF.Available_Quantity__c>=OLI.Quantity){
                
            FF.Available_Quantity__c=FF.Available_Quantity__c - OLI.Quantity;
            Update FF;
            }
                
                else{
                OLI.addError('Sorry...your O.L.I. Quatity is more then Available Quantity');
            }
        }
        }
        
    }
}