public with sharing class ContactListByAccountIdApex {
    @AuraEnabled(cacheable=true)
    public Static List<Contact>Method(String jdId) {
     return [SELECT Id,AccountId,FirstName,LastName,Email,Phone,Account.Name FROM Contact 
     WHERE AccountId= :jdId];
    }
}