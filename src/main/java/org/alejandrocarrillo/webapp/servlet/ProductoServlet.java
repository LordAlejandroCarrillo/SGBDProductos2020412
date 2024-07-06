package org.alejandrocarrillo.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/producto-servlet/")
@MultipartConfig
public class ProductoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text.html");
        
        ArrayList<String> productos = new ArrayList<>();
        
        String nombreProducto = req.getParameter("nombreProducto");
        String descripcionProducto = req.getParameter("descripcionProducto");
        String marcaProducto = req.getParameter("marcaProducto");
        double preocioProducto = Double.parseDouble(req.getParameter("precioProducto"));
        
        productos.add(nombreProducto);
        productos.add(descripcionProducto);
        productos.add(marcaProducto);
        productos.add(Double.toString(preocioProducto));
        
        req.setAttribute("producto", productos);
        getServletContext().getRequestDispatcher("/productos/formProductos.html").forward(req, resp);
        
    }
    
}
