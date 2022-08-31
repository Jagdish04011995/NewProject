trigger Restrict on Case (before update) {
    
        Set<id> Sets=new Set<id>();
        For(Case FF:trigger.new){
        Sets.add(FF.Id);
        
        List<Case> Lists=new List<Case>([Select id,Status From Case Where ID IN:Sets]);
        String JD;
        For(Case AA:Lists){
        JD=AA.Status;
        }
        
        if(JD=='New'){
         FF.addError('Sorry u are not Update Record U are in Just Read Only Mode');  
        }
        
            
            
        
    }
    
    
  
    
    
    
}