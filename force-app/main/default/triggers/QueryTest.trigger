trigger QueryTest on Account (before Update) {
    Set<id> Sets=new Set<id>();
    For(Account Acc:Trigger.new){
       Sets.add(Acc.id);
        
        
        
        List<Contact> Lists=new List<Contact>([Select id From Contact Where AccountID IN:Sets]);
        
        For(Contact Con:Lists){
           Acc.description=Con.id; 
        }
        
    }
}