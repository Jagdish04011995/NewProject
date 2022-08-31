trigger UpdateOppWithProducts on OppLI__c (before insert, before update, before delete) {
 For(OppLI__c PP:trigger.new){
    
    if(trigger.isinsert){
    Opportunity Opps=new Opportunity();
    Opps.Name='Test Opportunity';
    Opps.CloseDate=System.today();
    Opps.StageName='Prospecting';
    Opps.Product1__c=PP.Product1__c;
    Opps.Product2__c=PP.Product2__c;
    Opps.List_Of_Product__c=PP.Product1__c;   
        if(PP.Product2__c!=null){
        Opps.List_Of_Product__c=PP.Product1__c + ';' + PP.Product2__c;  
        }
           Insert Opps;
           PP.Opportunity__c=Opps.Id;  
        }
        
        if(trigger.isUpdate ){
            Opportunity Opps1=new Opportunity();
            Opps1.Id=PP.Opportunity__c;
            Opps1.Product1__c=PP.Product1__c;
            Opps1.Product2__c=PP.Product2__c;
            Opps1.List_Of_Product__c=PP.Product1__c;
            if(PP.Product2__c!=null){
            Opps1.List_Of_Product__c=PP.Product1__c + ';' + PP.Product2__c;  
        }
            Update Opps1;
        }
 }
    
    if(trigger.isdelete){
        For(OppLI__c PP:trigger.old){
           Opportunity Opps2=new Opportunity();
            Opps2.Id=PP.Opportunity__c;
            delete Opps2;
        } 
    }
    
    
       
        
        
}