trigger CliantContactOnAccount on Account (After insert) {

    For(Account Acc:trigger.new){
    Contact Con=new Contact();
    Con.AccountId=Acc.Id;
    Con.LastName=Acc.Name;
     insert Con;
    }
    
    Set<id> Sets=new Set<id>();
    For(Account Acc:trigger.new){
     Sets.add(Acc.id);        
        }
    
    List<Contact> Lists=new List<Contact>();
    for(Contact FF:[select Name From Contact Where AccountID IN:Sets]){
    Lists.add(FF);
    }
    
    For(Account Acc:trigger.new){
    for(Contact CCC:Lists){
    Account AA=new Account();
    AA.Id=Acc.Id;
    AA.Acc_Fevorate_Colur__c=CCC.Name;  
        update AA;
        }
    }

}