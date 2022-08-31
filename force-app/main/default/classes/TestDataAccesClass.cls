@IsTest(SeeAllData=True)
public class TestDataAccesClass {

    
    @IsTest Public Static void Method(){
        Account a=[Select ID,Name From Account Where Name= 'jagdish' LIMIT 1];
        System.assert(a !=null);
        
        
        
      Account j=a.clone();
       j.Name='jagdishBabu';
        insert j;
         Account b=[Select ID,Name From Account Where Name= 'jagdishBabu' LIMIT 1];
        System.assert(b !=null);  
        
        
    }
    
    
}