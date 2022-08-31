public with sharing class ContactListByAccountIdDiff {
    @AuraEnabled(cacheable=true)
    public Static List<Contact>jagdish(String oo) {
     return [SELECT Id,AccountId,FirstName,LastName,Email,Phone,Account.Name FROM Contact 
     WHERE AccountId= :oo];
    }
}