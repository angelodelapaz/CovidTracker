package controller;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginServlet extends HttpServlet {

    Connection con;
    Statement stmt;
    ResultSet rs;
    PreparedStatement ps;
    int errorctr = 3;

    
    @Override
    public void init(ServletConfig config) throws ServletException {
        try {
            Class.forName(config.getInitParameter("jdbcClassName"));
            String username = config.getInitParameter("dbUserName");
            String password = config.getInitParameter("dbPassword");
            //String url = "jdbc:derby://localhost:1527/LoginDB";
            StringBuffer url = new StringBuffer(config.getInitParameter("jdbcDriverURL"))
                            .append("://")
                            .append(config.getInitParameter("dbHostName"))
                            .append(":")
                            .append(config.getInitParameter("dbPort"))
                            .append("/")
                            .append(config.getInitParameter("databaseName"));
            
            con = DriverManager.getConnection(url.toString(), username, password);

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

    public boolean checkCorrect(HttpServletRequest request) throws SQLException {
        boolean isCorrect = true;
        String query = "SELECT * FROM covidtracker WHERE Username = ? AND Password = ?";
        String passw = request.getParameter("password");
        ps = con.prepareStatement(query);
        ps.setString(1, request.getParameter("username"));
        ps.setString(2, passw);
        ResultSet rs = ps.executeQuery();
        String email = "";
        while (rs.next()) {
            email = rs.getString("Username").trim();
        }
        if (email == null || email.equals("")) {
            isCorrect = false;
        } 
        return isCorrect;
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean isCorrect = false;
        /*try {
            Captcha captcha = (Captcha) request.getSession().getAttribute(Captcha.NAME); 
            String answer = request.getParameter("answer");
            if (!captcha.isCorrect(answer)) {
                response.sendRedirect("failedlogin.jsp");
            }  
        } catch (NullPointerException ne) {
            ne.printStackTrace();
        } */
        errorctr--;
        try {
            if (con != null) {
                isCorrect = checkCorrect(request);

                if (isCorrect != true) {
                    if (errorctr == 0) {
                        response.sendRedirect("failedlogin.jsp");
                    } else {
                        response.sendRedirect("error404.jsp");
                    }
                }
                
                stmt = con.createStatement();
                rs = stmt.executeQuery("SELECT * FROM covidtracker ORDER BY Username");
                request.setAttribute("records", rs);
                request.getRequestDispatcher("table.jsp").forward(request, response);
            } else {
                response.sendRedirect("error500.jsp");
            }

        } catch (SQLException | IllegalStateException | NullPointerException sqle) {
            response.sendRedirect("error500.jsp");
            sqle.printStackTrace();
        }

    }
    
    @Override
    public void destroy() {
        try {
            rs.close();
            ps.close();
            stmt.close();
            con.close();
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
