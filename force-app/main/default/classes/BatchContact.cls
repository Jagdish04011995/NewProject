public class BatchContact Implements Database.Batchable<SObject> {
    
    Public Database.QueryLocator Start(Database.BatchableContext BC){
        String SS='Select Id,Email,Phone From Contact';
        Return Database.GetQueryLocator(SS);
        
    }
    
    Public Void Execute(Database.BatchableContext BC, List<Contact> Lists){
        For(Contact Con:Lists){
            Con.Department=Con.Email;
        }
        Update Lists;
    }
    
    Public Void Finish(Database.BatchableContext BC){
        BatchDelete Obj=new BatchDelete();
        id Ids=database.executeBatch(Obj);
    }

}