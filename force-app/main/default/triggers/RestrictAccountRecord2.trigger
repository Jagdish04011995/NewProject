trigger RestrictAccountRecord2 on Account (After insert,After update) {
Set<id> Sets=new Set<id>();
    For(Account Acc:trigger.new){
        Sets.add(Acc.Id);
    }
    
    
    List<Account> Lists=new List<Account>();
    for(Account AA:[select id From Account where createddate=today or lastmodifieddate=today]){
        Lists.add(AA);
    }
    
    integer Count;
    for(Account HH:Lists){
        
       Count=Lists.Size();
        
    }
        
        if(Count>2){
            For(Account Acc:trigger.new){
                Acc.addError('Limit Over');
                    
            }
            
        }
    
    
}