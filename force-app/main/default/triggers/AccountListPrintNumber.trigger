trigger AccountListPrintNumber on Account (before insert,before update) {
    For(Account Acc:trigger.new){
        For(integer i=1;i<Acc.Max__c;i++){
            integer AAA=i;
            Acc.Avg__c=i=i;
        }
    }
}