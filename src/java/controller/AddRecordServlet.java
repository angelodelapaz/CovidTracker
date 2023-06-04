package controller;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddRecordServlet extends HttpServlet {
   
    Connection conn;
    PreparedStatement ps;
    
    @Override
    public void init(ServletConfig config) throws ServletException { //initializes Database connection with Web.xml parameters
        try {
            Class.forName(config.getInitParameter("jdbcClassName"));
            String username = config.getInitParameter("dbUserName");
            String password = config.getInitParameter("dbPassword");
            StringBuffer url = new StringBuffer(config.getInitParameter("jdbcDriverURL"))
                    .append("://")
                    .append(config.getInitParameter("dbHostName"))
                    .append(":")
                    .append(config.getInitParameter("dbPort"))
                    .append("/")
                    .append(config.getInitParameter("databaseName"));

            conn = DriverManager.getConnection(url.toString(), username, password);

        } catch (SQLException sqle) {
            System.out.println("SQLException error occured - "
                    + sqle.getMessage());
        } catch (ClassNotFoundException nfe) {
            System.out.println("ClassNotFoundException error occured - "
                    + nfe.getMessage());
        } catch (NullPointerException ne) {
            System.out.println("NullPointerException error occured - "
                    + ne.getMessage());
        }

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       if (conn!=null){
           try{
               
            String query = "INSERT INTO covidtracker (Name, Sex, Address, Occupation) VALUES (?, ?, ?, ?)";
            ps = conn.prepareStatement(query); //NAGRERETURN NG NULL VALUE (conn is null)
            ps.setString(1, request.getParameter("name"));
            //ps.setString(2, bday);
            ps.setString(2, request.getParameter("sex"));
            ps.setString(3, request.getParameter("address"));
            ps.setString(4, request.getParameter("occupation"));
            ps.executeUpdate();
            response.sendRedirect("resident.jsp");
        } catch (SQLException sqle){
            sqle.printStackTrace();
        }
       }else{
           response.sendRedirect("error500.jsp");
           System.out.print("Error");
       }
        
        
    }
    
    @Override
    public void destroy() {
        try {
            ps.close();
            conn.close();
        } catch (SQLException sqle) {
            sqle.printStackTrace();
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

}
