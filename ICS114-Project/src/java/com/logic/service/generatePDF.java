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

/**
 *
 * @author Louie Caringal
 */
public class generatePDF {
    public void generate() throws DocumentException, FileNotFoundException{
        String filename = "D:\\MP\\sample.pdf";
            
        //Create document object
        Document document = new Document();        
    
            //Get pdfwriter instance
            PdfWriter.getInstance(document, new FileOutputStream(filename));
            
            //open document
            document.open();
            
            //add content
            Paragraph paragraph = new Paragraph("Pink or Brown?");
            document.add(paragraph);
            
            //close document
            document.close();
            
    }
}
