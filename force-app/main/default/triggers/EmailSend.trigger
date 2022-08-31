trigger EmailSend on Account (before insert) {
for(Account i:trigger.new) 
{ 
messaging.SingleEmailMessage m1=new messaging.SingleEmailMessage(); 
string[] toadd =new string[]{'Sonudahake95@gmail.com'};
    
m1.setToAddresses(toadd); 
m1.setSubject('accenture'); 
m1.setPlainTextBody('this is interview call letter'); 
    
messaging.Email[] mail1=new messaging.Email[]{m1}; 
messaging.sendEmail(mail1); 
 
} 
}