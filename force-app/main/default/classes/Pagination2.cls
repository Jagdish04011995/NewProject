public class Pagination2 {
    
    public integer totalrece {get;set;}
    public integer offsetsize=0;
    public integer limitsize=5;
    
    public Pagination2(){
       totalrece=[select count()from account] ;
    }
    public list <Account> getacclist(){

    list <account> acc=database.query('select name, website, annualRevenue, Description, type from account limit '+limitsize+' OFFSET '+offsetsize);
       return acc; 
    }
    public void Previous(){
     offsetsize=offsetsize - limitsize;  
    }
     public void Next(){
     offsetsize=offsetsize + limitsize;  
    }
    public boolean gethasprevious(){
        if(offsetsize ==0)
            return true;
        else return false;
    }
    public boolean gethasnext(){
        if((offsetsize + limitsize) > totalrece)
            return true;
        else 
            return false;
    }
}