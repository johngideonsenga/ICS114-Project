/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.logic.servlet;

import com.logic.service.Borrower;
import com.logic.service.Item;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang.StringEscapeUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Jonjie
 */
public class borrowServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH-mm");
            Date date = new Date();  
            
            int itemID = Integer.parseInt(request.getParameter("itemID"));
            String itemName = StringEscapeUtils.escapeHtml(request.getParameter("itemName"));
            String studentNum = StringEscapeUtils.escapeHtml(request.getParameter("studentNum"));
            String lastName = StringEscapeUtils.escapeHtml(request.getParameter("lastName"));
            String firstName = StringEscapeUtils.escapeHtml(request.getParameter("firstName"));
            String section = StringEscapeUtils.escapeHtml(request.getParameter("section"));
            String room = StringEscapeUtils.escapeHtml(request.getParameter("room"));
            String subject = StringEscapeUtils.escapeHtml(request.getParameter("subject"));
            
            Borrower borrower = new Borrower();
            borrower.setItemID(itemID);
            borrower.setItemName(itemName);
            borrower.setStudentNum(studentNum);
            borrower.setLastName(lastName);
            borrower.setFirstName(firstName);
            borrower.setSection(section);
            borrower.setRoom(room);
            borrower.setSubject(subject);
            borrower.setTimeBorrowed(formatter.format(date));

            if(addBorrower(borrower, itemID)){
                response.sendRedirect("index.jsp?success=1");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    boolean addBorrower(Borrower borrower, int itemID){
        Item item = new Item();
        Configuration config = null;
        SessionFactory factory = null;
        Session session = null;
        Transaction transaction = null;
        
        if(item.decrementStock(itemID)){
            try{
                config = new Configuration();
                config.configure();
                factory = config.buildSessionFactory();
                session = factory.openSession();
                transaction = session.beginTransaction();
                session.save(borrower); // insert
                transaction.commit();
                session.close();
                return true;
            }
            catch(Exception e){
                System.out.println("Exception: "+e);
                return false;
            }
        }
        return false;
    }
}
