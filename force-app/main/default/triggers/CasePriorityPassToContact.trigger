trigger CasePriorityPassToContact on Case (before insert,before update) {
set<id> Sets=new set<id>();
    for(case cc:trigger.new)
    Sets.add(cc.ContactId);
        
    
    map<id,contact> Maps=new  map<id,contact>();
    for(contact ff:[Select id,Email from Contact Where id IN :Sets])
    {
        maps.put(ff.id,ff);
    } 
       
    for(case cc:trigger.new)
        
     cc.Description=Maps.get(cc.ContactId).Email;   
}