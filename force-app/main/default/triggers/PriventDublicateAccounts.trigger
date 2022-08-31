trigger PriventDublicateAccounts on Account (before insert,before update) {
if(trigger.isinsert || trigger.isupdate){
     
     Map<String,Account> Maps=new Map<String,Account>();
        For(Account Acc:trigger.new)
            
        If((Acc.Website!=null) && (trigger.isinsert || (Acc.Website!=trigger.oldmap.get(Acc.id).website))){
             Maps.put(Acc.Website,Acc); 
            }
    
        for(Account Acc:[Select Website From Account Where Website IN:Maps.keyset()]){
            Account AA = Maps.get(Acc.Website);
            AA.Website.addError('Sorry Dublicate Data is found');
        }
    }
}