trigger SOSL2 on Account (before Update) {
    Set<id> Sets=new Set<id>();
    For(Account Acc:trigger.new){
        Sets.add(Acc.Id);
        
    List<contact> Listss=new  List<contact>([Select name From Contact Where AccountID IN:Sets]);
        For(Contact FF:Listss){
        String SS=FF.Name;
 List<List<Sobject>> Lists=new List<List<Sobject>>([Find 'jhdfbvd' IN All Fields Returning Contact(LastName)]);

        Contact[] searchContacts = (Contact[])Lists[0];
    
        Integer JDS=searchContacts.size();
        
        Acc.Min__c=JDS;
        }
    }
}