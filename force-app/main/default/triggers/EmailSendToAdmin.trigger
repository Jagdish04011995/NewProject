trigger EmailSendToAdmin on Account (After insert) {
    Set<id> Sets=new Set<id>();
    for(Account Acc:trigger.new){
       Sets.add(Acc.OwnerId) ;
        
    }
        
      List<User> Used=new List<User>();
        for(User UU:[Select Email From User Where id IN:Sets]) {
            Used.add(UU);
        }     
    for(Account Acc:trigger.new){
    for(User FF:Used){
        Messaging.singleEmailmessage JD=new Messaging.SingleEmailMessage();
        String[] ST=new String[]{FF.email};
        JD.setToAddresses(ST); 
        JD.setSubject('Account Is Created Name Is' +Acc.Name);
        JD.setPlainTextBody('InYouer Account Object Account Is Created ID is' +Acc.Id+' Name IS '+ Acc.Name+' Thank you');
        
        Messaging.Email[] EE=new Messaging.Email[]{JD};
            Messaging.sendEmail(EE);
    }
    }
       
    
    
    
    
}