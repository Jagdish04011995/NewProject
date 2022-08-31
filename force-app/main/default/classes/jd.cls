public with sharing class jd {
    @AuraEnabled(cacheable=true)
    public static List<Account>queryAccountByEmployNumber(Integer NumberOfEmploys ) {
      return [select Name from account where numberOfEmployees  >= :NumberOfEmploys ];
        }
}