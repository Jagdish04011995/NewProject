public class AccountListControlVisualForce {
   public List<Account>jagdish{get; Private set;}
   Public String dahake{get;set;} 
    
    public Void jd(){
    jagdish = [Select name from Account Where Name =:dahake];
    }
}