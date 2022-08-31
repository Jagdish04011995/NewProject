trigger AccountOnlyAdminDelete on Account (before Delete) {
if(trigger.isDelete){
        if(userinfo.getUserName()!='jagdish@04011995.com'){
        For(Account Acc:trigger.old){
        Acc.addError('Sorry Only Systeem Admin Can Delete It');
        }
    }
    }
   
}