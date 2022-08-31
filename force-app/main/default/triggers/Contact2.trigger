trigger Contact2 on Contact2__c (before insert) {
    Set<id> Sets=new Set<id>();
    for(Contact2__c Con:trigger.new){
        Sets.add(Con.Contact__c);
        List<Contact> Lists=new List<Contact>();
        for(Contact CC:[Select AccountId From Contact where id IN:Sets]){
            Lists.add(CC);
        }
        
        Account ACC=new Account();
        for(Contact FF:Lists){
            ACC.id=FF.AccountId;
            ACC.Description=Con.Name;
            Update ACC;
        }
        
    }
}