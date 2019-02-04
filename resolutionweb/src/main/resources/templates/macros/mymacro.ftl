<!-- Macro del header -->
<#macro header>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <a class="navbar-brand" href="#">TripTravel</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/">Home<span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/hoteles">Hoteles</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/activities">Actividades</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/restaurants">Restaurantes</a>
                    </li>
                </ul>
                <button class="btn btn-outline-primary my-2 my-sm-0 " type="submit">Inicia Sesión</button>
            </div>
        </nav>
    </header>
</#macro>
<!-- Macro del footer -->
<#macro footer>
    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2018-2019 TripTravel</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Términos</a></li>
            <li class="list-inline-item"><a href="#">Política de Privacidad</a></li>
            <li class="list-inline-item"><a href="#">Contáctanos</a></li>
        </ul>
    </footer>
</#macro>