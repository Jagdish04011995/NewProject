public class ExtentionTest {
    
    Public Account UU;

   
    Public ExtentionTest(apexPages.StandardController JAG){
        this.UU=(Account)JAG.getRecord();
        
    }
    
     Public String getJD(){
    String PP = 'Jagdish'+' '+UU.id;
    return PP;
    }
    
}