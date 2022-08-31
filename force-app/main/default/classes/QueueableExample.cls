public class QueueableExample implements Queueable {
    
    
    
    
    Public Void Execute(QueueableContext JD){
       
        Account Acc=new Account();
        Acc.name='popopopo';
        insert Acc;
        
         BatchCl oo=new BatchCl();
         database.executeBatch(oo);

    }
    
    
          
}