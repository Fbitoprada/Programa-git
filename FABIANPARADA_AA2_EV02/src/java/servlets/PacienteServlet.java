/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/PacienteServlet")
public class PacienteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Recibir datos del formulario
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String edad = request.getParameter("edad");
        String correo = request.getParameter("correo");
        String direccion = request.getParameter("direccion");
        String especialidad = request.getParameter("especialidad");

        // Pasar datos al JSP
        request.setAttribute("nombre", nombre);
        request.setAttribute("apellido", apellido);
        request.setAttribute("edad", edad);
        request.setAttribute("correo", correo);
        request.setAttribute("direccion", direccion);
        request.setAttribute("especialidad", especialidad);

        // Redirigir al JSP
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}