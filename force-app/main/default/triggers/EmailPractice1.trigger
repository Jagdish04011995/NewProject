trigger EmailPractice1 on Contact (After insert) {
    For(Contact Con:trigger.new){
        
        Messaging.SingleEmailMessage JD=new Messaging.SingleEmailMessage();
        String[] JD1=new String[]{Con.Email};
            
        JD.SetToAddresses(JD1);
        JD.SetSubject('WellCome'+Con.FirstName+' '+Con.LastName);
        JD.SetPlainTextBody('SetPlainTextBody');
        JD.setSenderDisplayName('System Administrator');
        
        Messaging.Email[] JJ=new Messaging.Email[]{JD};
        Messaging.sendEmail(JJ);
        
    }
}