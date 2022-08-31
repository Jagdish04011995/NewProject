trigger OppoLineIeamOppoAccount on OpportunityLineItem (After insert) {
    Set<id> Sets=new Set<id>();
    Set<id> Setss=new Set<id>();
    For(OpportunityLineItem Oppos:trigger.new){
       Sets.add(Oppos.Product2Id);
       Sets.add(Oppos.OpportunityId);
    
    List<Product2> Lists=new List<Product2>([Select id From Product2 Where id IN:Sets]);
    List<Opportunity> Listss=new List<Opportunity>([Select id From Opportunity Where id IN:Setss]);   
        
    For(Product2 JD:Lists){
        For(Opportunity JDS:Listss){
           JDS.Description =JD.Name;
            Update JDS;
        }
   
    }
    }
}