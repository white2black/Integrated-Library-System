/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validate;

import java.util.regex.*;

/**
 *
 * @author Administrator
 */
public class Validator{
    
    

    public static boolean validateEmail(String email) throws NullPointerException{
        
        Pattern pattern = Pattern.compile("\\w+@\\w+\\.\\w{2,3}");
        Matcher match = pattern.matcher(email);
        
        return match.matches();
        
    }
    
    public static boolean validateUsername(String username) throws NullPointerException{
        return username.length() < 20;
    }
    
    public static boolean validatePassword(String password) throws NullPointerException{
        
        Pattern pattern = Pattern.compile(".{8,}");
        Pattern patCapitalA = Pattern.compile(".*[A-Z].*");
        Pattern patLowerA = Pattern.compile(".*[a-z].*");
        Pattern patNum = Pattern.compile(".*[0-9].*");
        Pattern patW = Pattern.compile(".*\\W.*");
        
        Matcher matchCapitalA = patCapitalA.matcher(password);
        Matcher matchLowerA = patLowerA.matcher(password);
        Matcher matchNum = patNum.matcher(password);
        Matcher matchW = patW.matcher(password);
        Matcher match = pattern.matcher(password);
        
        return matchCapitalA.matches() && matchLowerA.matches() && matchNum.matches() && matchW.matches() && 
                match.matches();
        
    }
    
    public static boolean validateName(String name) throws NullPointerException{
        return name.length() < 51;
    }
    
}
