trigger ContactDeleteAccountAlsoDelete on Contact (After Delete) {
   
    For(Contact Con:trigger.old){
     
    Account ACC=new Account();
    ACC.id=Con.Accountid;
        Delete ACC;
}
}