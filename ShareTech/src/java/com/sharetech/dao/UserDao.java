package com.sharetech.dao;
import java.sql.*;
import com.sharetech.entities.User;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;

    }

    //doinsert user to data base:
    public boolean saveUser(User user) {
        boolean f = false;

        try {
            String query = "insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
    
    //get user by email password
    public User getUserByEmailAndPassword(String email,String password)
    {
        User user=null;
        try{
            String query="select*from user where email=? and password=?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2,password);
            
          ResultSet set=  pstmt.executeQuery();
          if(set.next())
          {
                user = new User();
          //data from db
          String name=set.getString("name");
          //set to user object
          user.setName(name);
          user.setId(set.getInt("id"));
          user.setEmail(set.getString("email"));
          user.setPassword(set.getString("password"));
          user.setGender(set.getString("gender"));
          user.setAbout(set.getString("about"));
          user.setDateTime(set.getTimestamp("rDate"));
          user.setProfile(set.getString("profile"));
            
          }
           
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return user;
    }
    
      public User getUserByUserId(int userId) {
        User user = null;
        try {
            String q = "select * from user where id=?";
            PreparedStatement ps = this.con.prepareStatement(q);
            ps.setInt(1, userId);
            ResultSet set = ps.executeQuery();
            if (set.next()) {
                user = new User();

//             data from db
                String name = set.getString("name");
//             set to user object
                user.setName(name);

                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("rdate"));
                user.setProfile(set.getString("profile"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
}
