public class DetailButtenExtentionController {
    Private ApexPages.StandardController Jds;
    Public  Contact LL;
    Public String Jagdish{get; set;}   
    
    Public DetailButtenExtentionController(ApexPages.StandardController Jd){
       Jds=Jd;
        LL=(Contact)Jd.getRecord();
    }
    
    Public Void Jagdish(){
       id ids=Jds.getId();
       Contact Con=(Contact)Jds.getRecord();
        
        Jagdish=ids+' '+Con.Id+' '+LL.id;
        
    } 
    
}