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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
            int itemID = Integer.parseInt(request.getParameter("itemID"));
            String studentNum = request.getParameter("studentNum");
            String lastName = request.getParameter("lastName");
            String firstName = request.getParameter("firstName");
            String section = request.getParameter("section");
            String room = request.getParameter("room");
            String subject = request.getParameter("subject");
            
            Borrower borrower = new Borrower();
            borrower.setItemID(itemID);
            borrower.setStudentNum(studentNum);
            borrower.setLastName(lastName);
            borrower.setFirstName(firstName);
            borrower.setSection(section);
            borrower.setRoom(room);
            borrower.setSubject(subject);
            
            if(addBorrower(borrower)){
                response.sendRedirect("borrowSuccess.html");
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
    boolean addBorrower(Borrower borrower){
        Configuration config = null;
        SessionFactory factory = null;
        Session session = null;
        Transaction transaction = null;
        
        try{
            config = new Configuration();
            config.configure();
            factory = config.buildSessionFactory();
            session = factory.openSession();
            transaction = session.beginTransaction();            
            session.save(borrower); // insert
            transaction.commit();
            session.close();
        }
        catch(Exception e){
            System.out.println("Exception: "+e);
            return false;
        }
        return true;
    }
}
