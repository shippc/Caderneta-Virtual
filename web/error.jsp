<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Caderneta Virtual</title>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="menuindex.jsp" flush="true"/>
        <section class="intro-single" id="introducao">
            <div class="container-fluid container-error-404">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-lg-8 error-404-content">
                            <h1 class="color-a">404</h1>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item breadcrumb-slash"> <a class="monooo" href="index.jsp">Pagina Inicial</a> </li>
                                    <li class="breadcrumb-item breadcrumb-slash color-a" aria-current="page"> 404 Error </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="container" id="to-breadcrumb">
            <h1 class="text-center">404 Error página não encontrada</h1>
            <p class="text-center">A URL que você requisitou não foi encontrada</p>
            
        </div>

        <jsp:include page="footer.jsp"/>
        <jsp:include page="script.jsp"/>
    </body>
</html>
