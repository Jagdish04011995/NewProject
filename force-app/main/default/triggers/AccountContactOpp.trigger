trigger AccountContactOpp on Account (After insert,before update)
{
    List<Contact>jagdish = new List<Contact>();
    List<opportunity>jagdish1 = new List<opportunity>();
    for(Account j:Trigger.new)
    {
        Contact con =new Contact(LastName=j.name,AccountId=j.id,Email='sonudahake95@gmail.com');
        opportunity  cono =new opportunity(name=j.name,accountid=j.id,closedate=date.today(),stagename='prospecting');
    jagdish.add(con);
    jagdish1.add(cono);

} 
    insert jagdish;
    insert jagdish1;
}