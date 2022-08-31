trigger JagdishTrigger on Account (before insert,before update) 
{
    for(Account jo: Trigger.new)
    jo.Description='new Description';

}