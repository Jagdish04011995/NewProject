trigger DeleteRestrictContact on Contact (before Delete) {
   
    For(Contact Con:trigger.old){
    
        if(con.AccountId != null){
       
        trigger.oldmap.get(Con.Id).addError('Not Delete');
            }
        }
}