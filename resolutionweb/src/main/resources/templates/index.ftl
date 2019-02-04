<#import "macros/mymacro.ftl" as macroHelper><!-- Importación de la macro -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="/css/main.css">
    <link rel="shortcut icon" type="image/png" href="/img/logo.jpg"/>
    <title>TripTravel</title>
</head>

<body>
<@macroHelper.header/><!-- Macro header -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <!-- <li data-target="#myCarousel" data-slide-to="3"></li> -->

    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="first-slide" src="/img/hotel.jpg" alt="First slide">
            <div class="container">
                <div class="carousel-caption text-left">
                    <h1>Hoteles</h1>
                    <p></p>
                    <p><a class="btn btn-lg btn-primary" href="/hoteles" role="button">Descubre más</a></p>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img class="second-slide" src="/img/actividad.jpg" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Actividades</h1>
                    <p></p>
                    <p><a class="btn btn-lg btn-primary" href="/activities" role="button">Descubre más</a></p>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img class="third-slide" src="/img/restaurante.jpg" alt="Third slide">
            <div class="container">
                <div class="carousel-caption text-right">
                    <h1>Restaurantes</h1>
                    <p></p>
                    <p><a class="btn btn-lg btn-primary" href="/restaurants" role="button">Descubre más</a></p>
                </div>
            </div>
        </div>
        <!-- <div class="carousel-item">
            <img class="fourth-slide" src="/img/7.jpg" alt="fourth slide">
            <div class="container">
                <div class="carousel-caption text-right">
                    <h1>Persistence XML</h1>
                    <p></p>
                    <p><a class="btn btn-lg btn-primary" href="/restaurants" role="button">technology</a></p>
                </div>
            </div>
        </div> -->
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div role="main" class="container">
    <h1>Nuestras Ofertas</h1>
    <hr class="featurette-divider">
    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">Hilton Paris Charles de Gaulle Airport <span class="text-muted">(Reservado por última vez hace 3 horas )</span></h2>
            <p class="lead">Increible Hotel de 4 estrellas situado en el centro de Francia (Roissy-en-France), con piscina cubierta y restaurante. Con un aspecto moderno que enamora a sus clientes.</p>
        </div>
        <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="/img/Hilton.jpg" alt="Hotel Hilton">
        </div>
    </div>
    <hr class="featurette-divider">
    <div class="row featurette">
        <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">Snorkel con guía personal en Málaga<span class="text-muted"> ¡Reseva ya!</span></h2>
            <p class="lead">Estaréis en lugares donde pocos han llegado, en otro mundo rodeado de paz, silencio, relax. El mar de Alborán es un lugar privilegiado de paso de grandes cetáceos y gran biodiversidad marina. </p>
        </div>
        <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" src="/img/buceo.jpg" alt="Buceo ">
        </div>
    </div>
    <hr class="featurette-divider">
    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">Restaurante Torre BEC<span class="text-muted"> ¡Increibles vistas!</span></h2>
            <p class="lead">El restaurante está situado en la planta 7ª del Centro de Convenciones a más de 52m de altura, tiene capacidad para 250 personas. Dispone de una magnífica terraza de más de 300m2.</p>
        </div>
        <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="/img/restaurante1.jpg" alt="Restaurante">
        </div>
    </div>
    <hr class="featurette-divider">
</div>

<@macroHelper.footer/><!-- Macro footer -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>