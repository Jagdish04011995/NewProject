@RestResource(UrlMapping='/Account/*')
Global with Sharing  class RestTestClass {

    @HttpGet
    Global Static Account doGet(){
        RestRequest req = RestContext.request;
        RestRequest res = RestContext.request;
       String AccountID = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [Select ID ,name,phone,website From Account Where ID = :AccountID];
        return result;
    }
    
    @HttpDelete
    Global Static Void doDelete(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
       String accountID = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account account = [Select ID From Account Where ID = :accountID];
        Delete account;
    }
    
    @HttpPost
    Global Static String doPost(String Name,String phone,String Website){
        Account account = new Account();
        account.Name = Name;
        account.phone = phone;
        account.Website = Website;
        insert account;
        return account.Id;
    }
    
    @HttpPut
    Global Static String doPut(String Name){
        RestRequest req = RestContext.request;
        String AccountID = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account account =new Account(ID=AccountID);
         account.Name=Name;
        Update account;
        return account.Id;
    }
    
    
    
}