<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
            <nav class="navbar navbar-dark bg-dark fixed-top">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Formulario Productos</a>
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
                      <a class="nav-link" href="../index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="formProductos.jsp">Formulario Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../producto-servlet">Lista Productos</a>
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

        <nav class="position-relative navbar navbar-dark bg-dark fixed-top">
        </nav>
        <div class="container mt-5 w-75">
            <div class="form-floating mb-4">
                <input class="form-control" id="nombreProducto" name="nombreProducto" type="text">
                <label for="nombreProducto">Nombre Producto</label>
            </div>
            <div class="form-floating mb-4">
                <textarea class="form-control" id="descripcionProducto" placeholder="" name="descripcionProducto"></textarea>
                <label for="descripcionProducto">Descripci�n del Producto</label>
            </div>
            <div class="form-floating mb-4">
                <input type="text" class="form-control" id="marcaProducto" name="marcaProducto">
                <label for="floatingInput">Marca del Producto</label>
            </div>
            <div class="input-group mb-4">
                <span class="input-group-text">Q.</span>
                <input type="text" class="form-control" name="precioProducto" id="precioProducto">
                <span class="input-group-text">.00</span>
            </div>
            <div>
                <input type="submit" class="btn btn-outline-success">
            </div>
        </div>
    </body>
</html>
