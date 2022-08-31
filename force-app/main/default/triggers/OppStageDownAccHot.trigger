trigger OppStageDownAccHot on Opportunity (before insert,before Update) {

    For(Opportunity Opps:trigger.new){
    
        if(Opps.StageName==('Closed won')){
            Account Acc=new Account();
            Acc.id=Opps.AccountId;
            Acc.Rating='Hot';
            update Acc;
        } 
    }
}