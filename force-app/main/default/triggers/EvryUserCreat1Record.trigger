trigger EvryUserCreat1Record on Account (After insert) {
    Set<id> Sets=new Set<id>();
    For(Account Acc:trigger.new){
        Sets.add(Acc.CreatedById);
    
    
      List<Account> Lists=new List<Account>([Select id From Account Where createddate=today And CreatedById IN:Sets ]);
        
        
        
        If (Lists.Size()>100){
         
            Acc.addError('Only 2 Record will be Create');   
        }
        
    
        
        
    }
    
}