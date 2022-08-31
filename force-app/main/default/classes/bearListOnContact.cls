public with sharing class bearListOnContact {
    @AuraEnabled(cacheable=true)
    public Static List<Bear__c>Method(String jdId) {
     return [SELECT Id,Name,Location__c,Supervisor__c,Birthdate__c,Age__c FROM Bear__c
     WHERE Supervisor__c= :jdId];
    }
}