public class ClassHelperName {
Public Static Void Method(List<Account>Helper)
{
    List<Contact>Con =New List<Contact>();
    for(Account Acc:Helper)
    {
        Contact jd=new Contact();
        jd.LastName=Acc.Name;
        jd.AccountId=Acc.Id;
        jd.Email=Acc.Website;
      Con.add(jd); 
    }
    insert(Con);
}
    
}