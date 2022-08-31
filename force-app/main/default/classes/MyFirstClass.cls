public without sharing class MyFirstClass {
 public Account jd;
public MyFirstClass(Apexpages.StandardController stdcontroler) {
    
   jd=(Account) stdcontroler.getRecord();
}
    public String getgreeting() {
        return'Hello' + jd.Name + '('+jd.Id+')';
    }
           
}