trigger FatchLoopContact on Account (After insert) {
     List<Contact> Lists=new List<Contact>();
    set<id> sets=new set<id>();
    for(Account Acc:trigger.new){
        Sets.add(Acc.id);
        
        
         Map<id,Account> Maps=new Map<id,Account>();
          for(Account Accc:[Select id,NumberOfEmployees from Account Where Id IN:Sets])
          Maps.put(Accc.id, Acc);
        
        
        if(Maps.size()>0 && Maps!=Null){
            
                for(integer i=0;i<Maps.get(Acc.id).NumberOfEmployees;i++){                               
                    contact con=new Contact();
                    con.AccountId=Acc.Id;
                    con.LastName='jagdish'+i;
                    Lists.add(con);
                }
                
            }
        }
        
            insert (Lists);
        }