trigger trigger3 on Account (After insert) {   //Account chi Contact madhe Pan Contact Chi Account Madhe nahi karta yet karan 
 List<Contact> Listss=new List<Contact>();       // Contact Run timee madhe creat hoil  insert mode madhe pan update madhe hoil
Set<id> Sets=new Set<id>();
    For(Account Acc:trigger.new){
        Sets.add(Acc.id);
        
    }
    
    For(Account Acc:trigger.new){
    Contact Con=new Contact();
    Con.LastName=Acc.Name;
    Con.AccountId=Acc.Id;
    Con.Phone='123456789';
        Listss.add(Con);
    }
    insert Listss;
    
    
    
}