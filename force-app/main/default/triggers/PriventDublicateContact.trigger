trigger PriventDublicateContact on Contact (before insert,before update) {
if(trigger.isInsert || trigger.isUpdate)
    {
        Map<String,Contact> emailMap = new Map<String,Contact>();
       
        
        for (Contact c : System.Trigger.new) 
        {
            if ((c.Email != null) && (System.Trigger.isInsert || (c.Email != System.Trigger.oldMap.get(c.Id).Email))) {
                
                    emailMap.put(c.Email,c);
                    
             
                
            }            
            
        }
        
                
    
        for (Contact c : [SELECT Email FROM Contact WHERE Email IN :emailMap.KeySet()]) {
            Contact c1 = emailMap.get(c.Email);            
            c1.addError('Contact with this email address already exists');
        }
    
    }
    
    
    
    
     {
        Map<String,Contact> Pahons = new Map<String,Contact>();
       
        
        for (Contact c : System.Trigger.new) 
        {
            if ((c.Phone != null) && (System.Trigger.isInsert || (c.Phone != System.Trigger.oldMap.get(c.Id).Phone))) {
                
                    Pahons.put(c.Phone,c);
                    
             
                
            }            
            
        }
        
                
    
        for (Contact c : [SELECT Phone FROM Contact WHERE Phone IN :Pahons.KeySet()]) {
            Contact CC = Pahons.get(c.Phone);            
            CC.Phone.addError('Contact with this Phone address already exists');
        }
    
    }
    
    
    
    
    
   
}