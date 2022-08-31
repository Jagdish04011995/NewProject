trigger OppoUpdateAsPerTime on Account (before update) {

   Set<id> Sets=new Set<id>();
    For(Account Acc:trigger.new){
        Sets.add(Acc.id);
    }
    
    List<Opportunity> Lists=new List<Opportunity>();
    For(Opportunity Opps:[Select id,StageName,CreatedDate From Opportunity Where AccountId IN:Sets]){
        Lists.add(Opps);
    }
    
    For(Opportunity FF:Lists){
     datetime Jd=System.now();  
        if(FF.CreatedDate<Jd && FF.StageName!='Closed Won'){
            FF.StageName='Closed lost';
            update FF;
        }
    }
    
}