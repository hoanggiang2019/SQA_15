
package com.gpa.service.impl;

import com.gpa.domain.StudentResult;
import java.util.List;
import org.junit.Test;
import static org.junit.Assert.*;


public class ResultServiceImplTest {
    
    public ResultServiceImplTest() {
    }

    @Test
    public void testFindResultInSemester() {
        System.out.println("findResultInSemester");
        Long studentId = null;
        String semesterName = "";
        ResultServiceImpl instance = new ResultServiceImpl();
        List<StudentResult> expResult = null;
        List<StudentResult> result = instance.findResultInSemester(studentId, semesterName);
        assertEquals(expResult, result);
        
    }

   @Test
    public void testFindResultTillSemester() {
        System.out.println("findResultTillSemester");
        Long studentId = null;
        String semesterName = "";
        ResultServiceImpl instance = new ResultServiceImpl();
        List<StudentResult> expResult = null;
        List<StudentResult> result = instance.findResultTillSemester(studentId, semesterName);
       assertEquals(expResult, result);       
   }
    
}
