trigger UpdateOppoName on OpportunityLineItem (After insert,After update, After Delete) {
    
   if(trigger.isDelete){
        for(OpportunityLineItem OO:trigger.old){
        Set<id> Setsss=new Set<id>();
        Set<id> Setssss=new Set<id>();
        
        Setsss.add(OO.OpportunityId);
        Setssss.add(OO.Product2Id);   
List<Opportunity> Listsss=new List<Opportunity>([Select ID,Product1__c,Product2__c,List_Of_Product__c From Opportunity Where ID IN:Setsss]);
List<Product2> LL=new List<Product2>([Select ID, Name From Product2 Where ID IN:Setssss]);  
           For(Product2 AAAA:LL){
           For(Opportunity AAA:Listsss){
               
           Opportunity Oppss=new Opportunity();
           Oppss.Id=OO.OpportunityId;
        
            if(AAA.Product1__c==AAAA.Name){
            Oppss.Product1__c=null;
            Oppss.List_Of_Product__c=null;
            }
               else{
            if(AAA.Product2__c==AAAA.Name){
            Oppss.Product2__c=null;
            Oppss.List_Of_Product__c=null;
            }
               }
          
               update Oppss;
           } 
           }
    }
    } 
    
     if(trigger.isInsert || trigger.isUpdate){
List<Opportunity> PP=new List<Opportunity>();
  Set<id> Sets=new Set<id>();
  Set<id> Setss=new Set<id>();
    For(OpportunityLineItem OLI:trigger.new){
        Sets.add(OLI.Product2Id);
        Setss.add(OLI.OpportunityId);
        
        List<Product2> Lists=new List<Product2>([Select ID, Name From Product2 Where ID IN:Sets]);
        List<Opportunity> Listss=new List<Opportunity>([Select ID,Product1__c,Product2__c,List_Of_Product__c From Opportunity Where ID IN:Setss]);
        
       
        For(Opportunity FFF:Listss){
        For(Product2 FF:Lists){
            Opportunity Opps=new Opportunity();
            Opps.Id=FFF.Id;
            
            if(FFF.Product1__c==null){
            Opps.Product1__c=FF.Name;
            Opps.List_Of_Product__c=FF.Name;
                
            }else{
               Opps.Product2__c=FF.Name;
               Opps.List_Of_Product__c=FFF.List_Of_Product__c+';'+FF.Name;
            }
         
            PP.add(Opps);
        
        }
        }
        Update PP;
        
    }
  }
    
    
        
  
}