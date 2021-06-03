/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gpa.service.impl;

import com.gpa.domain.Semester;
import java.util.List;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Windows
 */
public class SemesterServiceImplTest {
    
    public SemesterServiceImplTest() {
    }

    @Test
    public void testFindCurrentSemester() {
        System.out.println("findCurrentSemester");
        SemesterServiceImpl instance = new SemesterServiceImpl();
        Semester expResult = null;
        Semester result = instance.findCurrentSemester();
        assertEquals(expResult, result);
        
    }

    @Test
    public void testFindAll() {
        System.out.println("findAll");
        SemesterServiceImpl instance = new SemesterServiceImpl();
        List<Semester> expResult = null;
        List<Semester> result = instance.findAll();
        assertEquals(expResult, result);
        
    }

    @Test
    public void testFindBySemesterName() {
        System.out.println("findBySemesterName");
        String semesterName = "";
        SemesterServiceImpl instance = new SemesterServiceImpl();
        Semester expResult = null;
        Semester result = instance.findBySemesterName(semesterName);
        assertEquals(expResult, result);
       
    }
    
}
