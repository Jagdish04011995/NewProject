public class CreatContactUtilitty {
   public Static void methodName(List<Account>Jagdish)
   {
       system.debug('Account000.'+jagdish);  //puri account ke field ki infor. dega
       {
       List<Contact>dahake = new List<Contact>();
    for(Account j:Jagdish)
    {
    Contact con =new Contact(LastName=j.name,AccountId=j.id);
    dahake.add(con);
}
    insert dahake;
   }
    
   }
}