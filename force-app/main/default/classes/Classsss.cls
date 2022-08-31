public with sharing class Classsss {
    @AuraEnabled(cacheable=true)
    public static List<Account> Methodsssss(String recordId){
    List<Account>jd=([Select Name From Account Where id = :recordId]);
    return jd;
    
    }
}