package models;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import DBconnect.DbConnection;

public class User {

    private String name;
    private String email;
    private String password;
    private Integer userId;
    private Integer userType;
    private String phone;
    private String dp;
    private String address;
    private String pincode;
    private String city;
    private String gender;


    public User(String name, String email, String password ) {

        this.name = name;
        this.email = email;
        this.password = password;
        
    }

    public User() {
        
    }
    
    public boolean doLogin() {

        boolean flag = false;
        
        try {

            

            Connection con = DbConnection.connection();
            String query = "select * from users where email=? and password=? ";

            PreparedStatement pst = con.prepareStatement(query);

            pst.setString(1,email);
            pst.setString(2,password);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.next()) {

                name = rs.getString("name");
                userId = rs.getInt("user_id");
                pincode = rs.getString("pincode");
                address = rs.getString("address");
                gender = rs.getString("gender");
                city = rs.getString("city");
                dp = rs.getString("dp");
                flag=true;
                
            }
            
        } catch(SQLException e) {

            e.printStackTrace();
            
        }
          
         return flag;
    }


    public boolean saveUser() {

        boolean flag = false;
        
         try{

            Connection con = DbConnection.connection();
            
            String query = "insert into users(name,email,phone,password,user_type_id) value(?, ?, ?, ?, ?)";

            PreparedStatement pst = con.prepareStatement(query);

            pst.setString(1,name);
            pst.setString(2,email);
            pst.setString(3,phone);
            pst.setString(4,password);
            pst.setInt(5,userType);

            int count = pst.executeUpdate();
            
            if(count==1) {

                flag = true;
                
            }


            
         } catch(SQLException e) {

             e.printStackTrace();
            
         }
        
         return flag;
    }

    public void saveImage() {

        try {
     
            Connection con = DbConnection.connection();

            String query = "update users set dp=? where email=?";

            PreparedStatement pst = con.prepareStatement(query);

            pst.setString(1,dp);
            pst.setString(2,email);

            pst.executeUpdate();
            
            con.close();
        } catch(SQLException e) {

            e.printStackTrace();
           
        }
        
    }

    public boolean saveExtraDetails() {

           boolean flag = false;
        
          try{

            Connection con = DbConnection.connection();

            String query = "update users set address=?, pincode=?, gender=?, city=?";
            
            PreparedStatement pst = con.prepareStatement(query);

            pst.setString(1,address);
            pst.setString(2,pincode);
            pst.setString(3,gender);
            pst.setString(4,city);

            
            int count = pst.executeUpdate();
            
            if(count == 1) {

                flag = true;
                
            }
            
            con.close();
          } catch(SQLException e) {

            e.printStackTrace();
           
        }
        
        return flag;
    }
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    

    

    public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDp() {
        return dp;
    }

    public void setDp(String dp) {
        this.dp = dp;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    
    
    
    
    
}
