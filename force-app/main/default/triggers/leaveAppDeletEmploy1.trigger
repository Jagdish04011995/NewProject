trigger leaveAppDeletEmploy1 on Leave_Management__c (After Delete) {
        For(Leave_Management__c LL:trigger.old){
        Employe_Management__c EE=new Employe_Management__c();
        EE.id=LL.Employe_Management__c;
        Delete EE;
    }
}