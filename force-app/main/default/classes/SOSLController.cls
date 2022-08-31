public class SOSLController {
     Public List <opportunity> optylist {get;set;}
     Public List <contact> conlist {get;set;}
     Public List <account> acclist {get;set;}
    
    public String searchStr{get;set;}
    
    public void soslDemomethod(){
         optylist = new List <opportunity>();
         conlist  = new List <contact>();
         acclist  = new List <account>();
         if(searchStr.length() > 1){
      String searchStr1 = '*'+searchStr+'*';  //ye assign nahi kiya tabbhi chalega
          
String searchQuery = 'FIND\'' + searchStr1 + '\' IN ALL FIELDS RETURNING Account(Id,Name,type),Contact(Name,email),Opportunity(Name,StageName)';
          
          
      List <List <sObject>> searchlist= search.query(searchQuery);
            
      acclist = ((List<account>)searchList[0]);
      conlist = ((List<contact>)searchList[1]);
      optylist = ((List<opportunity>)searchList[2]);
             
      if(accList.Size()==0 && conlist.Size()==0 && optylist.Size()==0)
      {
ApexPages.addMessage(New ApexPages.message(ApexPages.Severity.ERROR, 'sorry,no result returned with matching strings...'));
      return;
                                                           
        }
            
        }
       else
        {
                    
ApexPages.addMessage(New ApexPages.message(ApexPages.Severity.ERROR, 'please enter at least two charactors....'));
        return;
        }
                                                           
    }
}