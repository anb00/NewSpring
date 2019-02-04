<#import "macros/mymacro.ftl" as macroHelper><!-- Importación de la macro -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="/css/main.css">
    <link rel="shortcut icon" type="image/png" href="/img/logo.jpg"/>
    <script type="javascript">$(function () {
        $('#example').popover();
    });</script>
    <title>TripTravel - Actividades</title>
</head>

<body>
<@macroHelper.header/><!-- Macro header -->
<#if activities??>
    <#list activities as  actx>
        <div id="main" data-paged="6" style="opacity: 1;">
            <div class="simple grid cols-3" >

                <div class="simple_options">
                    <table class="table" style="border:transparent;"><tr style="border: 0px transparent;"><td style="border: 0px transparent;"><img src="/img/buceo.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" width="192" height="192" /></td>
                            <td style="border: 0px transparent;">
                                <span class="nickname block"><span class="thin">Id Nº:</span> <span class="simple_name" href=""><h3>${actx.id}</h3><br>- <h3>${actx.description}</h3></span></span></span></td>
                            <td style="border: 0px transparent;"> <div><span class="nickname block"><span class="thin"><h3>${actx.getName()}</h3></span></span></div></td>
                            <td style="border: 0px transparent;"><span class="red" ><i class="fa fa-ban">${actx.name}</i> </span></td>


                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </#list>
</#if>

<@macroHelper.footer/><!-- Macro footer -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<footer class="my-5 pt-5 text-muted text-center text-small">
</body>
</html>