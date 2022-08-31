public class CodeClass {
    public integer offsetsize=0;
    public integer limitsize=5;
    
    public list <Account> getacclist(){

    list <account> acc=database.query('select name from account limit '+limitsize+' OFFSET '+offsetsize);
       return acc; 
    }
    public void Previous(){
     offsetsize=offsetsize - limitsize;  
    }
     public void Next(){
     offsetsize=offsetsize + limitsize;  
    }
    
    
}