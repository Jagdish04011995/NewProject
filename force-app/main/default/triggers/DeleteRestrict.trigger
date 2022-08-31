trigger DeleteRestrict on Account (before Delete) {

     for(Account Acc:[Select id From Account Where id IN (Select AccountId From Contact) AND id IN:trigger.old])
     trigger.oldmap.get(Acc.id).addError('Not Delete');
}