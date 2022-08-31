public with sharing class TrackExampleCompoent {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> Jagdish(string AccId){
        
        Contact JD=([Select AccountId From Contact Where id=:AccId]);
        String PP=JD.id;
        List<Account>DA=([Select id,name,Phone,Website From Account Where id=:PP]);
        return DA;
            
        
    }
    
}