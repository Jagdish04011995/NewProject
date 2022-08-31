public class NewAndExistingController {
    public Account account {get; set;}
    
    
    public NewAndExistingController(){
        Id id = ApexPages.currentPage().getparameters().get('id');
       account=(id==null)? new account():
        [select name,phone,industry from Account where Id=:id];
    }
    
    public PageReference Save(){
        try{
            upsert(account);
        }catch (System.DMLException e){
            ApexPages.addMessages(e);
            return null;
        }
        
            
        PageReference redirectSuccess = new ApexPages.StandardController(Account).view();
        return (redirectSuccess);
        
        
    }
    
    
}