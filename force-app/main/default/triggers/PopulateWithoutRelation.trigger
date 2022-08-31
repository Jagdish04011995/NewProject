trigger PopulateWithoutRelation on Doctor__c (before Update) {

    set<id> Sets=new set<id>();
    For(Doctor__c DD:trigger.new){
        Sets.add(DD.id);
    }
    
    
    List<DoctorDoctor__c> Lists=new List<DoctorDoctor__c>();
    For(DoctorDoctor__c FF:[Select id From DoctorDoctor__c ]){
        Lists.add(FF);
    }
 
    For(Doctor__c DD:trigger.new){
        for(DoctorDoctor__c PP:Lists) {
            PP.DOCTORDOCTORFIELD__c=DD.Name;
            update PP;
        }
    }
    
    
}