package org.alejandrocarrillo.webapp.service;

import java.util.List;
import org.alejandrocarrillo.webapp.entity.Producto;

public interface IProductoService {
    public List<Producto> listarProductos();
    public void agregarProductos();
    public void eliminarProductos();
    public Producto buscarProductosId(int productoId);
    public void editarProducto(Producto producto);
}
