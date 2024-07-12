package org.alejandrocarrillo.webapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.alejandrocarrillo.webapp.entity.Producto;
import org.alejandrocarrillo.webapp.service.ProductoService;

@WebServlet("/producto-servlet")
@MultipartConfig
public class ProductoServlet extends HttpServlet {
    private ProductoService ps;
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
        
        req.setAttribute("productos", productos);
        getServletContext().getRequestDispatcher("/productos/formProductos.jsp").forward(req, resp);
        
    }
    @Override
    public void init() throws ServletException{
        super.init();
        this.ps = new ProductoService();
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Producto> productos = ps.listarProductos();
        req.setAttribute("productos", productos);
        req.getRequestDispatcher("/productos/listaProductos.jsp").forward(req, resp);
    }
    
}
