/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ignacio
 */
@WebServlet(name = "ParDigits", urlPatterns = {"/lab2/pardigits"})
public class ParDigits extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private Integer countParDigits(String s) {
        Integer count = 0;
        for (String c : s.split("")) {
            if ("2468".contains(c)) {
                count++;
            }
        }
        return count;
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String n;
        List<String> numbers = new ArrayList<>();
        List<Integer> counts = new ArrayList<>();
        List<String> results = new ArrayList<>();
        for (int i = 0; i < 3; i++) {
            n = request.getParameter("int" + Integer.toString(i + 1));
            counts.add(countParDigits(n));
            numbers.add(n);
        }
        Integer maxCount = Collections.max(counts);
        Iterator<String> nIter = numbers.iterator();
        Iterator<Integer> cIter = counts.iterator();
        while (nIter.hasNext() && cIter.hasNext()) {
            String number = nIter.next();
            Integer count = cIter.next();
            if (Objects.equals(count, maxCount)) {
                results.add(number);
            }
        }
        request.setAttribute("results", results);
        request.getRequestDispatcher("/lab2/chkpar/show.jsp").forward(request, response);
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

}
