trigger CreatContact2 on Account (After insert,After update) 
{
CreatContactUtilitty.methodName(Trigger.new);
}