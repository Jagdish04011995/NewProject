trigger AccountContactCreatedAsPerNumber on Account (After insert) {

 List<Contact> Lists=new List<Contact>();
   Map<id,decimal> Maps=new Map<id,decimal>();
    
    
    for(Account Acc:trigger.new){
        Maps.put(Acc.id, Acc.NumberOfEmployees);
        
        if(Maps.size()>0 && Maps!=Null){
            
                for(integer i=0;i<Maps.get(Acc.Id);i++){                               
                    contact con=new Contact();
                    con.AccountId=Acc.Id;
                    con.LastName='jagdish'+i;
                    Lists.add(con);
                }
                
            }
        }
        if(Maps.size()>0 && Maps!=Null){
            insert (Lists);
        }
            
    }