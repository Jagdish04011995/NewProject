public class CustomFech {
    Public String Names{get;set;}
    Public List<Account> JDs{get;set;}
    
    public Void Methods(){
      JDs=([Select id,Name From Account where Name = :Names]);
    }
}