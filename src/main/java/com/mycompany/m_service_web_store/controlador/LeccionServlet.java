/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.m_service_web_store.controlador;

import com.mycompany.m_service_web_store.modelo.Leccion;
import com.mycompany.m_service_web_store.dao.LeccionDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Servlet encargado de gestionar las consultas relacionadas con las lecciones
 * @author mauricio
 */
@WebServlet(name = "LeccionServlet", urlPatterns = {"/LeccionServlet"})
public class LeccionServlet extends HttpServlet {
    
    private final LeccionDAO leccionDAO = new LeccionDAO();
    private int id;

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LeccionServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LeccionServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
        String servletPath = request.getServletPath();
        String idParam = request.getParameter("id");
        String cursoIdParam = request.getParameter("cursoId");
        
        if ("/lecciones".equals(servletPath)) {
            if (cursoIdParam != null) {
                try {
                    int cursoId = Integer.parseInt(cursoIdParam);
                    
                    List<Leccion> lecciones = leccionDAO.findByCursoId(cursoId);
                    
                    request.setAttribute("lecciones", lecciones);
                    
                    RequestDispatcher dispatcher = request.getRequestDispatcher("lecciones.jsp");
                    
                    dispatcher.forward(request, response);
                } catch (NumberFormatException e) {
                    response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID de curso inválido");
                }
            } else  {
                List<Leccion> lecciones = leccionDAO.findAll();
                request.setAttribute("lecciones", lecciones);
                
                RequestDispatcher dispatcher = request.getRequestDispatcher("lecciones.jsp");
                dispatcher.forward(request, response);
            }
        } else if ("/leccion".equals(servletPath) && idParam != null) {
            try {
               int cursoId = Integer.parseInt(cursoIdParam);
               Leccion leccion = leccionDAO.findById(id);
               if (leccion != null) {
                   request.setAttribute("leccion", leccion);
                   RequestDispatcher dispatcher = request.getRequestDispatcher("lecciones.jsp");
                dispatcher.forward(request, response);
                   
               } else {
                  response.sendError(HttpServletResponse.SC_NOT_FOUND, "Lección no encontrada");
               }
            } catch (NumberFormatException e) {
                    response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID de lección inválido");
                }
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Lección no encontrada");
        }
        
        
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
    }
    
}
