trigger OLIRestrictDueToProductType on OpportunityLineItem (before insert) {
    Set<id> Sets=new Set<id>();
    Set<id> Setss=new Set<id>();
    For(OpportunityLineItem OLI:trigger.new){
        Sets.add(OLI.OpportunityId);
        Setss.add(OLI.Product2Id);
        
        
        List<Opportunity> Lists=new List<Opportunity>([Select id,Product_Type__c From Opportunity Where id IN:Sets]);
        List<Product2> Listss=new List<Product2>([Select id,Family From Product2 Where id IN:Setss]);
        
        For(Opportunity OPP:Lists){
            For(Product2 Pro:Listss){ 
                if(OPP.Product_Type__c!=Pro.Family){
                    OLI.addError('Sorry.. Product type And Product Familly Should be Same For Creation of recorad of OLI');
                }
                
                
            } 
        }
        
    }
     
}