trigger SoslTest on Account (before Update) {

    
    List<List <Sobject>> Listss=new List<List <Sobject>>([Find 'Jagdish' IN All Fields Returning Account(Name),Contact(Name)]);
    
    Account[] Jd=(Account[])Listss[0];
    Contact[] Jd2=(Contact[])Listss[1];
    
    for(Account Acc:trigger.new){
    Acc.Max__c=Jd.size();
    Acc.Min__c=Jd2.size();
    }
   
    
    
}