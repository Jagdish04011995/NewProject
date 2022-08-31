trigger RestrictByMailInsert on Account (before insert,before update,before delete) {

    
    List<User> Lists=new List<User>();
    for(User AA:[Select Id From User Where username ='jagdish@04011995.com']){
        Lists.add(AA);
    }
    
    
    for(User UU:Lists){
        if(UU.id==userinfo.getUserId()){
            For(Account Acc:trigger.old){
              if(trigger.IsDelete)
                Acc.addError('NoDelete');
            }
                 For(Account Acc:trigger.old){
               if(trigger.IsInsert)
                Acc.addError('NoInsert');
                 }
             For(Account Acc:trigger.old){
               if(trigger.Isupdate)
                Acc.addError('Noupdate');
             }
                
                
            
            
        }
    }
}