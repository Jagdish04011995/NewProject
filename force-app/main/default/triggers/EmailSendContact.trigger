trigger EmailSendContact on Contact (before Delete) {

  For(Contact Con:trigger.old)  
      
  {
    Messaging.SingleEmailMessage Jd=new Messaging.SingleEmailMessage();
    String[] jd2=new String []{'Sonudahake95@gmail.com'};
    
    Jd.setToAddresses(jd2);
    Jd.SetSubject('Record Is Deleted.. Id is'+' ' +Con.Id);
    Jd.setplaintextBody(Con.FirstName +' '+Con.LastName+' '+Con.Email);
    
    Messaging.Email[] Jd3=new Messaging.Email[]{Jd};
    Messaging.sendEmail(Jd3);
    
}
}