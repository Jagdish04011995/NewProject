trigger AccountRestricDelete2 on Account (Before Delete) {
    
for(Account a : [SELECT Id from Account WHERE Id IN (SELECT AccountId from Contact) AND Id IN :trigger.old])
        {
            trigger.oldmap.get(a.Id).addError('Contact Hai... To Nahi Hoga.');
        }
    
}