public with sharing class ControllerPassparamNew {
    public Account account{get;set;}
    
    public integer offsetsize=0;
    public integer limitsize=5;
  
    public ControllerPassparamNew(){
        if (account == null)
        account =[select name,AccountNumber from account where id ='0015j00000XH9ObAAL'];
    }
    
    
    
     public list <Account> getacclist(){

    list <account> acc=database.query('select name, website, annualRevenue, Description, type from account limit '+limitsize+' OFFSET '+offsetsize);
       return acc; 
    }
    public void Previous(){
     offsetsize=offsetsize - limitsize;  
    }
     public void Next(){
     offsetsize=offsetsize + limitsize;  
    }
  
    
    
    public PageReference save(){
        update account;
        PageReference SecondPage = Page.MySecondPage;
        SecondPage.setRedirect(true);
        SecondPage.getParameters().put('id',account.Id);
        return SecondPage;
    }
    
    public PageReference GoToNewPage(){
        PageReference SecondPage = Page.MySecondPage;
        SecondPage.setRedirect(true);
        SecondPage.getParameters().put('id',account.Id);
        return SecondPage;
    }
    
    
}