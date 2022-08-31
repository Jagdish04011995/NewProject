trigger EmailPractice1lead on Lead (After insert) {
 For(Lead Con:trigger.new){
        List<Messaging.SingleEmailMessage> emailList= new List<Messaging.SingleEmailMessage>();
        
          EmailTemplate EmailTemplate = [Select Id,Subject,Description,HtmlValue,DeveloperName,Body from EmailTemplate where name='Pdf Attached Email for Lead'];
            Messaging.SingleEmailMessage JD=new Messaging.SingleEmailMessage();
        String[] JD1=new String[]{Con.Email};
            
        JD.SetToAddresses(JD1);
        
        JD.setTargetObjectId(Con.Id);
        JD.setTemplateID(EmailTemplate.Id);
        
        JD.setSenderDisplayName('System Administrator');
        
       emailList.add(JD);
       Messaging.sendEmail(emailList);
        
    }
}