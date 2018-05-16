/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.logic.service;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Louie Caringal
 */
public class generatePDF {
    public void generate() throws DocumentException, FileNotFoundException, SQLException{
        String filename = "D:\\Project\\sample.pdf";
            
        //Create document object
        Document document = new Document();   
        Borrower borrower = new Borrower();
        ResultSet rs = borrower.getBorrowers();
            //Get pdfwriter instance
            PdfWriter.getInstance(document, new FileOutputStream(filename));
            
            while(rs.next()){
                
            
            //open document
            document.open();
            
            //add content
            Paragraph paragraph = new Paragraph(rs.getString("borrower_ID")+" | "+rs.getString("student_num")+" | "+rs.getString("last_name")+" | "+rs.getString("first_name")+" | "+rs.getString("section")+" | "+rs.getString("room")+" | "+rs.getString("subject")+" | "+rs.getString("item")+" | "+rs.getString("time_Borrowed")+" | "+rs.getString("time_returned")+" | "+rs.getString("status"));
            document.add(paragraph);
            
            //close document
        }  
        document.close();
    }
}
