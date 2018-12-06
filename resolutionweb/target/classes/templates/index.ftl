<#import "macro/myMacro.ftl" as macroHelper>
<#import "macro/macroWrap.ftl" as macroWrap>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
     <@macroHelper.headerLoadings title="Import"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <@macroHelper.headerLoadings/>
</head>
<@macroWrap.body>

</@macroWrap.body>
    <br>
<hr>
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
        <h3>All Products</h3>
<#if datil??>
    <table class="table-dark" ><tr>
        <#list datil as item>
            <th scope="col">${item!""}</th></tr>
            <tr><th scope="col">${item!""}</th></tr>

        </#list>

    </table>
</#if>
        <form action="/api/rest/getAll" method="post">
<a href="/items/get">GET ITEMS</a>
            <button>ITEMS</button>

        </form>
        <br>
        <br>



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