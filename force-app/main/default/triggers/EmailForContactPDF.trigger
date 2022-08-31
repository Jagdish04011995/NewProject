trigger EmailForContactPDF on Contact (After insert) {
For(Contact EE:trigger.new){
    
    List<Messaging.SingleEmailMessage> Listss=new List<Messaging.SingleEmailMessage>();
    
    
      
        EmailTemplate EmailTemplate=[Select id From EmailTemplate Where Name='Pdf Attached Email for Lead'];
        
        Messaging.SingleEmailMessage Mail=new Messaging.SingleEmailMessage();
        String[] SS=new String[]{EE.Email};
            Mail.SetTOAddresses(SS);
            Mail.setTargetObjectId(EE.Id);
            Mail.SetTemplateID(EmailTemplate.id);
            Mail.SetsenderDisplayName('Salesforce DeveloperJD');   
            
                Listss.add(Mail);
               Messaging.sendEmail(Listss);
        
    }
}