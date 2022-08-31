trigger AfterDeleteConAccountDelete on Contact (After Delete) {
    For(Contact Con:trigger.new){
        Account Acc=new Account();
        Acc.id=Con.AccountId;
        Delete Acc;
    }
}