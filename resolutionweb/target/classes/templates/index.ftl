<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Spring rocks the web</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body class="jumbotron">

    <br>
    <div class="container">
        <div class="row">
            <div class="col-sm">
                PRODUCT TYPES
 <#if tony??>
   <table class="table-dark" >
        <#list tony as item>
            <tr> <th scope="col">${item!""}</th></tr>

        </#list>
   </table>
 </#if>
            </div>
            <div class="col-sm">
                One of three columns
            </div>
            <div class="col-sm">
                One of three columns
            </div>
        </div>
    </div>
    <div class="container">
        <h3>Products</h3>
<#if datil??>
    <table class="table-dark" ><tr>
        <#list datil as item>
            <th scope="col">${item!""}</th></tr>
            <tr><th scope="col">${item!""}</th></tr>

        </#list>

    </table>
</#if>


<hr>
        <br>
        <table>
            <thead>
            <tr>
                <th th:text="#{msgs.cabeceras.nombre}">Nombre</th>
                <th th:text="#{msgs.cabeceras.precio}">Precio</th>
            </tr>
            </thead>
            <tbody>
            <tr th:each="prod : ${produts}">
                <td th:text="${project.parent.groupId}">Naranjas</td>
                <td th:text="${description}">Naranjas</td>
                <td th:text="${numbers.formatDecimal(precio,1,2)}">0.99</td>
            </tr>
            </tbody>
        </table>

<@my.copyright date="1999-2018"/>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
</div>
</body>
</html>