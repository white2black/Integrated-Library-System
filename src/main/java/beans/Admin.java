/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Administrator
 */
public class Admin extends Person{
    //this will only extend Person 
    //no other properties
    public Admin(String userName, String password, String email,
            String firstName, String lastName, String imagePath){
        super(userName, password, email, firstName, lastName, imagePath);
    }
}
