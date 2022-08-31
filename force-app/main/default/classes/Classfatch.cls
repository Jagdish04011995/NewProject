public class Classfatch {
    Public Account Datas{get;Set;}
    Public List<account> Acc{get;Set;}
    
    Public void fech(){
        Acc=([Select id,name,Phone,Description From Account ]);
        
    }
}