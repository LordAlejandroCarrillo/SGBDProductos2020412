<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@page import = "java.util.List"%>
<%@page import = "org.alejandrocarrillo.webapp.entity.Producto"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Lista</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Listar Productos</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">P�gina</h5>
              <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">Inicio</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="./index.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="productos/formProductos.jsp">Formulario Productos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="">Lista Productos</a>
                </li>
              </ul>
              <form class="d-flex mt-3" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-success" type="submit">Search</button>
              </form>
            </div>
          </div>
        </div>
      </nav>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>  
    <table class="table table table-striped table-hover table-bordered" style="margin: 5% 5% 5% 5%;">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Nombre</th>
            <th scope="col">Descripci�n</th>
            <th scope="col">Marca</th>
            <th scope="col">Valor</th>
          </tr>
        </thead>
        <tbody>
            <% List<Producto> productos = (List)request.getAttribute("productos");%>
            <% for(Producto producto:productos){%>
                <tr>
                    <th scope="row"><%=producto.getProductoId()%></th>
                    <td><%=producto.getNombreProducto()%></td>
                    <td><%=producto.getMarcaProducto()%></td>
                    <td><%=producto.getDescripcionProducto()%></td>
                    <td>Q<%=producto.getPrecio()%></td>
                </tr>
                <%}
            %>
        </tbody>
    </table>
    </body>
</html>
