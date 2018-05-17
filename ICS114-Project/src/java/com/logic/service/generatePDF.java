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
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Louie Caringal
 */
public class generatePDF {
    public boolean generate(){
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH-mm");  
        Date date = new Date(); 
        
        String filename = "D:\\Project\\Borrowers - "+formatter.format(date)+".pdf";
        Borrower borrower = new Borrower();
        ResultSet rs = borrower.getBorrowers();
        
        try{
            Document document = new Document();   
            PdfWriter.getInstance(document, new FileOutputStream(filename));
            document.open();

            while(rs.next()){
                Paragraph paragraph = new Paragraph(rs.getString("student_num")+" - "+rs.getString("last_name")+", "+rs.getString("first_name")+" - "+rs.getString("section")+" - "+rs.getString("room")+" - "+rs.getString("subject")+" - "+rs.getString("item")+" - "+rs.getString("time_Borrowed"));
                document.add(paragraph);
            }
            document.close();
        }
        catch(DocumentException | FileNotFoundException | SQLException e){
            System.out.println("Exception: "+e);
            return false;
        }
        return true;
    }
}
