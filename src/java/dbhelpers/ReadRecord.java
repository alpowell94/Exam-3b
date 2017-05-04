/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbhelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customers;

public class ReadRecord {

    private Connection conn;
    private ResultSet results;

    private Customers customers = new Customers();
    private int custID;

    public ReadRecord (int custID) {
        
        try {
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String passwd = props.getProperty("user.password");
        
        this.custID = custID;

       
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        
        

        } catch (SQLException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void doRead() {

        try {
            String query = "SELECT * FROM Customers WHERE custID = ?";

            PreparedStatement ps = conn.prepareStatement(query);

            ps.setInt(1, custID);

            this.results = ps.executeQuery();

            this.results.next();

            customers.setCustID(this.results.getInt("custID"));
            customers.setFirstName(this.results.getString("firstName"));
            customers.setLastName(this.results.getString("lastName"));
            customers.setAddr1(this.results.getString("addr1"));
            customers.setAddr2(this.results.getString("addr2"));
            customers.setCity(this.results.getString("city"));
            customers.setState(this.results.getString("state"));
            customers.setZip(this.results.getString("zip"));
            customers.setEmailAddr(this.results.getString("emailAddr"));

        } catch (SQLException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Customers getCustomers(){
        
        return this.customers;
        
    }
}
