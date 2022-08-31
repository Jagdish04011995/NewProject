trigger CreatContact on Account (After insert){
  if(Trigger.isInsert)  
{
    
List<Contact>jagdish = new List<Contact>();
    for(Account j:Trigger.new)
    {
        Contact con =new Contact(LastName=j.name,AccountId=j.id,Email='sonudahake95@gmail.com');
    jagdish.add(con);
}
    insert jagdish;
    
    
    List<Opportunity >jagdish2 = new List<Opportunity >();
    for(Account j:Trigger.new)
    {
        Opportunity  con =new Opportunity (Name=j.name,AccountId=j.id,CloseDate=Date.toDay());
    jagdish2.add(con);
}
    insert jagdish2;
    
}
}