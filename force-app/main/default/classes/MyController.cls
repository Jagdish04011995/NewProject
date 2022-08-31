public class MyController {
Public Account account;
    
    public MyController(){
      account=[select id,Name,site,accountNumber,phone from account 
              Where id =:apexPages.currentPage().getparameters().get('id')];  
    }
    
    public account getjagdish(){
    return account;
    }
    
    
    public PageReference Save(){
        update account;
        PageReference SecondPage = Page.MyControllerPage2;
        SecondPage.setRedirect(true);
        SecondPage.getParameters().put('id',account.Id);
        return SecondPage;
    }
}