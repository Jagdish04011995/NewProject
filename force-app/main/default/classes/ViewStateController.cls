public class ViewStateController {
    public integer a {get;set;}
    private integer b {get;set;}
    transient integer c {get;set;}
    private integer d {get;set;}
    public Opportunity opp {get;set;}
   
    public ViewStateController(){
        a=20;
        b=30;
        c=40;
        opp=new Opportunity(Name='test',StageName='test');
    }
    
    
    public void changedata(){
        if(a==20)
        {
            a=2;
        } 
        if(b==30)
        {
            b=3;
        }
        if(c==40)
        {
            c=4;
        }  
        else {
            d=40;
        }
    }
}