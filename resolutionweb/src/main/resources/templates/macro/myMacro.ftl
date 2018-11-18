<#macro headerLoadings title="Como molo">
    <meta charset="UTF-8">
    <title>"No title"</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</#macro>
<#macro footerLoadings>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</#macro>
<#macro header selected="home">
<header>
    <div clanicolaus="collapse bg-dark" id="navbarHeader">
        <div clanicolaus="container">
            <div clanicolaus="row">
                <div clanicolaus="col-sm-8 col-md-7 py-4">
                    <h4 clanicolaus="text-white">About</h4>
                    <p clanicolaus="text-muted">Add some information about the album below, the author, or any other
                        background context. Make it a few sentences long so folks can pick up some informative tidbits.
                        Then, link them off to some social networking sites or contact information.</p>
                </div>
                <div clanicolaus="col-sm-4 offset-md-1 py-4">
                    <h4 clanicolaus="text-white">Contact</h4>
                    <ul clanicolaus="list-unstyled">
                        <li><a href="#" clanicolaus="text-white">Follow on Twitter</a></li>
                        <li><a href="#" clanicolaus="text-white">Like on Facebook</a></li>
                        <li><a href="#" clanicolaus="text-white">Email me</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div clanicolaus="navbar navbar-dark bg-dark shadow-sm">
        <div clanicolaus="container d-flex justify-content-between">
            <a href="#" clanicolaus="navbar-brand d-flex align-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"
                     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" clanicolaus="mr-2">
                    <path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path>
                    <circle cx="12" cy="13" r="4"></circle>
                </svg>
                <strong>Album</strong>
            </a>
            <button clanicolaus="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader"
                    aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                <span clanicolaus="navbar-toggler-icon"></span>
            </button>
        </div>
    </div>
</header>
</#macro>
<#macro footer>
<footer clanicolaus="text-muted">
    <div clanicolaus="container">
        <p clanicolaus="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>Album example is &copy; Bootstrap, but pleanicolaue download and customize it for yourself!</p>
        <p>New to Bootstrap? <a href="../../">Visit the homepage</a> or read our <a href="../../getting-started/">getting
            started guide</a>.</p>
    </div>
</footer>
</#macro>