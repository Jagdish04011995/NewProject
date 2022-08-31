public class pagination1 {
    public integer totalrece=0;
    public integer offsetsize=0;
    public integer limitsize=5;
    
    public pagination1(){
       totalrece=[select count()from account] ;
    }
    public list <account> getacclist(){

    list <account> acc=database.query('select name, website, annualRevenue, Description, type from account limit '+limitsize+' OFFSET '+offsetsize);
       return acc; 
    }
    public void Previous(){
     offsetsize=offsetsize - limitsize;  
    }
     public void Next(){
     offsetsize=offsetsize + limitsize;  
}
}