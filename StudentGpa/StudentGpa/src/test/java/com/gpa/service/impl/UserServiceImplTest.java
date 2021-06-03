/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gpa.service.impl;

import com.gpa.domain.PasswordResetToken;
import com.gpa.domain.User;
import com.gpa.domain.security.UserRole;
import java.util.Set;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Windows
 */
public class UserServiceImplTest {
    
    public UserServiceImplTest() {
    }

    @Test
    public void testCreateUser() {
        System.out.println("createUser");
        User user = null;
        Set<UserRole> userRoles = null;
        UserServiceImpl instance = new UserServiceImpl();
        User expResult = null;
        User result = instance.createUser(user, userRoles);
        assertEquals(expResult, result);
       
    }

    @Test
    public void testFindByUsername() {
        System.out.println("findByUsername");
        String username = "";
        UserServiceImpl instance = new UserServiceImpl();
        User expResult = null;
        User result = instance.findByUsername(username);
        assertEquals(expResult, result);
      
    }

    @Test
    public void testSave() {
        System.out.println("save");
        User user = null;
        UserServiceImpl instance = new UserServiceImpl();
        User expResult = null;
        User result = instance.save(user);
        assertEquals(expResult, result);
       
    }

    @Test
    public void testFindByEmail() {
        System.out.println("findByEmail");
        String userEmail = "";
        UserServiceImpl instance = new UserServiceImpl();
        User expResult = null;
        User result = instance.findByEmail(userEmail);
        assertEquals(expResult, result);
        
    }

    @Test
    public void testCreatePasswordResetTokenForUser() {
        System.out.println("createPasswordResetTokenForUser");
        User user = null;
        String token = "";
        UserServiceImpl instance = new UserServiceImpl();
        PasswordResetToken expResult = null;
        PasswordResetToken result = instance.createPasswordResetTokenForUser(user, token);
        assertEquals(expResult, result);
       
    }

    @Test
    public void testGetPasswordResetToken() {
        System.out.println("getPasswordResetToken");
        String token = "";
        UserServiceImpl instance = new UserServiceImpl();
        PasswordResetToken expResult = null;
        PasswordResetToken result = instance.getPasswordResetToken(token);
        assertEquals(expResult, result);
        
    }

    @Test
    public void testFindbyId() {
        System.out.println("findbyId");
        Long id = null;
        UserServiceImpl instance = new UserServiceImpl();
        User expResult = null;
        User result = instance.findbyId(id);
        assertEquals(expResult, result);
        
    }
    
}
