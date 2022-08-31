public with sharing class Claspractis {
    @AuraEnabled(cacheable=True)
    public static List<Account>jdahake(Integer NumberOfEmploys ) {
      return [select Name from account where numberOfEmployees >= :NumberOfEmploys];
        }
}