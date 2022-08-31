public class OpportunityList2Con {
  // ApexPages.StandardSetController must be instantiated
 // for standard list controllers
 
    public ApexPages.StandardSetController jd {
        get {
            if(jd == null) {
                jd = new ApexPages.StandardSetController(Database.getQueryLocator(
                    [SELECT Name, CloseDate FROM Opportunity]));
            }
            return jd;
        }
        set;
    }

    // Initialize setCon and return a list of records
    
    public List<Opportunity> getOpportunities() {
        return (List<Opportunity>) jd.getRecords();
    }
}