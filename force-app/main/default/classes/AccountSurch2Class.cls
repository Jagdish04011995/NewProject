public with sharing class AccountSurch2Class {
   
    @AuraEnabled(cacheable=true)
    public static List<Account> Methods(Integer Variablesss){
    List<Account>jd=([Select Name From Account Where NumberOfEmployees >= :Variablesss]);
    return jd;
    
    }
    
}