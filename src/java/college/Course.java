/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package college;

/**
 *
 * @author sandi
 */
public class Course {
    private String rno;
    private String dno;
    private String subid;
   
    private String intrst;
    private String chnge;
    private String relevant;
  private String subname;

    

    public Course()
    {
           rno="";
        dno="";
        subid="";
    
        intrst="";
        chnge="";
        relevant="";
       subname="";
    
    }
    public Course(String rno,String dno,String subid,String intrst,String chnge, String relevant,String subname){
        this.rno=rno;
        this.dno=dno;
        this.subid=subid;
        
        this.intrst=intrst;
        this.chnge=chnge;
        this.relevant=relevant;
         this.subname=subname;
       
    }
      public void setrno(String rno){
        this.rno=rno;
    }
    public String getrno(){
        return this.rno;
    }
     public void setdno(String dno){
        this.dno=dno;
    }
    public String getdno(){
        return this.dno;
    }
    
      public void setsubid(String subid){
        this.subid=subid;
    }
    public String getsubid(){
        return this.subid;
    }
    
   
     public void setintrst(String intrst){
        this.intrst=intrst;
    }
    public String getintrst(){
        return this.intrst;
    }
         public void setchnge(String chnge){
        this.chnge=chnge;
    }
    public String getchnge(){
        return this.chnge;
    }
     public void setrelevant(String relevant){
        this.relevant=relevant;
    }
    public String getrelevant(){
        return this.relevant;
    }
       public void setsubname(String subname){
        this.subname=subname;
    }
    public String getsubname(){
        return this.subname;
    } 
    
    
}
