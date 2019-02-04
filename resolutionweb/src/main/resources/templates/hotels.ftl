<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hoteles</title>
</head>
<body>
<h3>Hoteles</h3>
<#if hotels??>
    <#list hotels as  hotelx>
        <div id="main" data-paged="6" style="opacity: 1;">
            <div class="simple grid cols-3" >

                <div class="simple_options">
                    <table class="table" style="border:transparent;"><tr style="border: 0px transparent;"><td style="border: 0px transparent;"><img src="/img/hotel.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" width="192" height="192" /></td>
                            <td style="border: 0px transparent;">
                                <span class="nickname block"><span class="thin">Id Nº:</span> <span class="simple_name" href=""><h3>${hotelx.id}</h3><br>- <h3>${hotelx.description}</h3></span></span></span></td>
                            <td style="border: 0px transparent;"> <div><span class="nickname block"><span class="thin"><h3>${hotelx.getName()}</h3></span></span></div></td>
                            <td style="border: 0px transparent;"><span class="red" ><i class="fa fa-ban">${hotelx.name}</i> </span></td>


                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </#list>
</#if>
</body>
</html