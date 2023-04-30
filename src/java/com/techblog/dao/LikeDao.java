package com.techblog.dao;
import java.sql.*;

public class LikeDao {
     Connection con;

    public LikeDao(Connection con) {
        this.con = con;
    }
     
    public boolean insertLike(int pid,  int uid){
        boolean f=false;
        try{
            String q="insert into liked (pid,uid) values (?,?)";
            PreparedStatement p=this.con.prepareStatement(q);
            //values set
            p.setInt(1,pid);
            p.setInt(2,uid);
            p.executeUpdate();
            f=true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    public int countLikeOnPost(int pid){
        int count =0;
        
        String q="select count(*) from liked where pid=?";
      
        
        try{
              PreparedStatement p=this.con.prepareStatement(q);
              
              p.setInt(1,pid);
              ResultSet set=p.executeQuery();
              if(set.next()){
                  count=set.getInt("count(*)");
              }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return count;
    }
    
    public boolean isLikedByUser(int pid, int uid){
         
        boolean f=false;
        try{
            PreparedStatement p=this.con.prepareStatement("select  * from liked where pid=? and uid=?");
            
            p.setInt(1,pid);
            p.setInt(2, uid);
            ResultSet set=p.executeQuery();
            
            if(set.next()){
                f=true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    public boolean deleteLike(int pid, int uid){
        boolean f= false;
        try{
            PreparedStatement p=this.con.prepareStatement("delete from liked where pid=? and uid=?");
            p.setInt(1,pid);
            p.setInt(2, uid);
            p.executeUpdate();
            f=true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    
    public boolean insertLikeUnique(int pid, int uid) {
    boolean f = false;
    try {
        // Check if the combination of pid and uid already exists
        String checkQuery = "SELECT COUNT(*) FROM liked WHERE pid=? AND uid=?";
        PreparedStatement checkStmt = this.con.prepareStatement(checkQuery);
        checkStmt.setInt(1, pid);
        checkStmt.setInt(2, uid);
        ResultSet rs = checkStmt.executeQuery();
        rs.next();
        int count = rs.getInt(1);
        if (count > 0) {
            // Combination already exists, restrict user from liking more than once
            System.out.println("User has already liked this post.");
            return false;
        }

        // Insert the like
        String insertQuery = "INSERT INTO liked (pid, uid) VALUES (?,?)";
        PreparedStatement insertStmt = this.con.prepareStatement(insertQuery);
        insertStmt.setInt(1, pid);
        insertStmt.setInt(2, uid);
        insertStmt.executeUpdate();
        f = true;
    } catch (Exception e) {
        e.printStackTrace();
    }
    return f;
}

}
