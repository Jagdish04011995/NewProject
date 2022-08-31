public class CaseAfterInsertUpade {
    
public Static void Method(List<Case>bb){
    
List <account> jagdish=new List <account>();
List<Id> jd=new List<Id>();
    For(case a:bb){
        jd.add(a.AccountId);  
    }
    Map<Id,Account> maps=new Map<Id,Account>();
    for(Account j:[Select AccountField__c from Account Where Id IN :jd])
       maps.put(j.id,j);
    
    For(case a:bb){
        Account obj=maps.get(a.AccountId);
        obj.AccountField__c=a.CaseField__c;
        jagdish.add(obj);
    }
    
    update jagdish;
}
}