trigger TriggerNoMailTrigger on Contact (before insert) 
{
    for(Contact C : trigger.new){
        if(C.department == Null){
            System.debug('aaaaaaaaaaaa');
        }
    }
    
}