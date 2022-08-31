trigger UserUpdateEmail on User (before Update) {
    Set<id> Sets=new Set<id>();
    For(User U:trigger.new){
        Sets.add(U.Id);
       
        Messaging.SingleEmailMessage JD=new Messaging.SingleEmailMessage();
        String[] JD2=new String[]{'Sonudahake95@gmail.com'};
        JD.setToAddresses(JD2);
        JD.SetSubject('Your Accounts and Number of Related Contacts');
        
       List<Account> Lists=new List<Account>();
       For(Account Acc:[Select id,Name, (Select Id From Contacts)From Account Where OwnerID IN:Sets]){
            Lists.add(Acc);
        }
        
        for(Account FF:Lists){
        integer Jagdish = Lists.Size();
        integer Dahake = FF.Contacts.Size();
        
       JD.SetPlainTextBody('Dear User, You have assigned number of account and Account Contains Number of Contacts.User has Change There Email ID New Email ID is = '+U.Email+
       'Total Number of Account Creation IS=  '+Jagdish+ ' Total Number of Contact Creation IS=  '+ FF.Name +' '+Dahake); 
        Messaging.Email[] JD3=new Messaging.Email[]{JD};
        Messaging.sendEmail(JD3);
        }
        
    }
}