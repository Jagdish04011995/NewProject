public class NewAndExistingController2 {
public Contact contact {get;private set;}
    
    
    public NewAndExistingController2(){
        Id id = ApexPages.currentPage().getparameters().get('id');
       contact=(id==null)? new Contact():
        [select Lastname,phone from contact where Id=:id];
    }
    
    public PageReference Save(){
        try{
            upsert(contact);
        }catch (System.DMLException e){
            ApexPages.addMessages(e);
            return null;
        }
        
            
        PageReference redirectSuccess = new ApexPages.StandardController(Contact).view();
        return (redirectSuccess);
        
        
    }
    
    
}