public with sharing class DetailButtenControler {
private ApexPages.StandardController jd;
    
    public string greeting {get;set;}
    public DetailButtenControler(ApexPages.StandardController jd)
    {
        
    this.jd=jd;
    }
    
    public string doSamething(){
         contact record;
     record =(contact)jd.getRecord();
     
        greeting = 'hello' + ' '+record.Id;
        return null;
    }
}