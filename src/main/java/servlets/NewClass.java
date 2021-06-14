/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.User;
import database.UseDB;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Administrator
 */
public class NewClass {
    
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        UseDB db = new UseDB();
        
        UseDB.removeUser("time");
        
    }
}
