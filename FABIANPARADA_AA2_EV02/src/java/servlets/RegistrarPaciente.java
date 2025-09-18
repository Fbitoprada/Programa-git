/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author FABIAN
 */
@WebServlet(name = "RegistrarPaciente", urlPatterns = {"/RegistrarPaciente"})
public class RegistrarPaciente extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String edad = request.getParameter("edad");
        String correo = request.getParameter("correo");
        String direccion = request.getParameter("direccion");
        String especialidad = request.getParameter("especialidad");

        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println("<h2>Paciente Registrado</h2>");
        response.getWriter().println("<p><b>Nombre:</b> " + nombre + "</p>");
        response.getWriter().println("<p><b>Apellido:</b> " + apellido + "</p>");
        response.getWriter().println("<p><b>Edad:</b> " + edad + "</p>");
        response.getWriter().println("<p><b>Correo:</b> " + correo + "</p>");
        response.getWriter().println("<p><b>Dirección:</b> " + direccion + "</p>");
        response.getWriter().println("<p><b>Especialidad:</b> " + especialidad + "</p>");
    }
}
