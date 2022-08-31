trigger PicklistProductFamilly on Contact2__c (before insert) {
    Set<id> Sets=new Set<id>();
    For(Contact2__c Con:trigger.new){
        Sets.add(Con.Contact__c);
        
        List<Contact> Lists=new List<Contact>();
        For(Contact PP:[Select id, ProductType__c From Contact Where ID IN:Sets]){
        Lists.add(PP);
        }
        
        For(Contact FF:Lists){
          if(FF.ProductType__c!=Con.ProductFamilly__c) 
          Con.addError('The Product family does not match.');
        }
        
        
    }
}