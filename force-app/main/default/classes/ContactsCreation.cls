public class ContactsCreation {

  public Static Void Method(List<Account>bb)
    {
    List<Contact> Jagdish=new List<Contact>();
Map<id,Decimal> Dahake=new Map<id,Decimal>();
  
    
  for(Account jd:bb){
  Dahake.put(jd.id,jd.Number_of_contact_creation__c);
}
   
    if(Dahake.size()>0 && Dahake!=null)
        for(id jd2:Dahake.keySet()){
        for(integer i=0;i<dahake.get(jd2);i++){
          Contact con=new Contact();
            con.AccountId=jd2;
            con.LastName='Contact'+i;
            Jagdish.add(con);
        }
    
         insert Jagdish;
}
}
}