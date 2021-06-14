/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import  java.util.*;



public class User extends Person{
    
    private ArrayList<String> booksIssued;
    
    public User(String userName, String password, String email,
            String firstName, String lastName, String imagePath, ArrayList<String> booksIssued){
        super(userName, password, email, firstName, lastName, imagePath);
        this.booksIssued = booksIssued;
    }
    
    public User(){
        super();
    }

    public ArrayList<String> getBooksIssued() {
        return booksIssued;
    }

    public void setBooksIssued(ArrayList<String> booksIssued) {
        this.booksIssued = booksIssued;
    }
   
     
}
