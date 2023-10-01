package com.imempresa.webjava05;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String numero1Str = request.getParameter("numero1");
        String numero2Str = request.getParameter("numero2");
        String operacion = request.getParameter("operacion");
        
        double numero1 = Double.parseDouble(numero1Str);
        double numero2 = Double.parseDouble(numero2Str);
        double resultado = 0;

        if ("suma".equals(operacion)) {
            resultado = numero1 + numero2;
        } else if ("resta".equals(operacion)) {
            resultado = numero1 - numero2;
        } else if ("multiplicacion".equals(operacion)) {
            resultado = numero1 * numero2;
        } else if ("division".equals(operacion)) {
            if (numero2 != 0) {
                resultado = numero1 / numero2;
            } else {
                request.setAttribute("error", "División por cero no permitida.");
            }
        }
        
        request.setAttribute("numero1", numero1);
        request.setAttribute("numero2", numero2);
        request.setAttribute("operacion", operacion);
        request.setAttribute("resultado", resultado);
        
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("editar".equals(action)) {
 
            request.getRequestDispatcher("editar.jsp").forward(request, response);
        } else if ("eliminar".equals(action)) {

            request.getRequestDispatcher("eliminar.jsp").forward(request, response);
        } else {

        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    public String getServletInfo() {
        return "Short description";
    }
}
