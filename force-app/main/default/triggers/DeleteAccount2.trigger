trigger DeleteAccount2 on Contact (After Delete) {
    for(Contact Con:trigger.old){
        Account Acc=new Account();
        Acc.id=Con.AccountId;
        Acc.Description=null;
        Update Acc;
    }
}