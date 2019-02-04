<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head lang="en">

    <title>Spring Framework Guru</title>

    <!--/*/ <th:block th:include="l/headerinc :: head"></th:block> /*/-->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <!--/*/ <th:block th:include="l/header :: header"></th:block> /*/-->

    <h2>Product Details</h2>
        <div>

  <!--          <form class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Product Id:</label>
                    <div class="col-sm-10">
                        <p class="form-control-static" th:text="$ {item.id}">Product Id</p></div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Description:</label>
                    <div class="col-sm-10">
                        <p class="form-control-static" th:text="$ {item.description}">description</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Price:</label>
                    <div class="col-sm-10">
                        <p class="form-control-static" th:text="$ {item.precio}">Priceaddd</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Image Url:</label>
                    <div class="col-sm-10">
                        <p class="form-control-static" th:text="$ {item.imageUrl}">url....</p>
                    </div>
                </div>
            </form>

    </div>
</div> -->
<#if datil??>
    <#list datil as item>
        <div id="main" data-paged="6" style="opacity: 1;">
            <div class="simple grid cols-3" >

                <div class="simple_options">
                    <table class="table" style="border:transparent;"><tr style="border: 0px transparent;"><td style="border: 0px transparent;"><img src="/img/Atlantico.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" width="192" height="192" /></td>
                            <td style="border: 0px transparent;">
                                <span class="nickname block"><span class="thin">Id Nº:</span> <span class="simple_name" href=""><h6>${item.id}</h6><br>- <h6>${item.description}</h6></span></span></span></td>
                            <td style="border: 0px transparent;"> <div><span class="nickname block"><span class="thin"><h3>${item.getName()}</h3></span></span></div></td>
                            <td style="border: 0px transparent;"><span class="red" ><i class="fa fa-ban">${item.name}</i> </span></td>


                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </#list>
</#if>
<br>
            <hr>
            <#if fi??>
                <#list fi as item>
                    <div id="main" data-paged="6" style="opacity: 1;">
                        <div class="simple grid cols-3" >

                            <div class="simple_options">
                                <table class="table" style="border:transparent;"><tr style="border: 0px transparent;"><td style="border: 0px transparent;"><img src="/img/Atlantico.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" width="192" height="192" /></td>
                                        <td style="border: 0px transparent;">
                                            <span class="nickname block"><span class="thin">Id Nº:</span> <span class="simple_name" href=""><h6>${item.id}</h6><br>- <h6>${item.description}</h6></span></span></span></td>
                                        <td style="border: 0px transparent;"> <div><span class="nickname block"><span class="thin"><h3>${item.getName()}</h3></span></span></div></td>
                                        <td style="border: 0px transparent;"><span class="red" ><i class="fa fa-ban">${item.name}</i> </span></td>


                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </#list>
            </#if>
            <br>
            <hr>
            <#if rest??>
                <#list rest as restautant>
                    <div id="main" data-paged="6" style="opacity: 1;">
                        <div class="simple grid cols-3" >

                            <div class="simple_options">
                                <table class="table" style="border:transparent;"><tr style="border: 0px transparent;"><td style="border: 0px transparent;"><img src="/img/restaurante1.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" width="192" height="192" /></td>
                                        <td style="border: 0px transparent;">
                                            <span class="nickname block"><span class="thin">Id Nº:</span> <span class="simple_name" href=""><h6>${restautant.id}</h6><br>- <h6>${restautant.description}</h6></span></span></span></td>
                                        <td style="border: 0px transparent;"> <div><span class="nickname block"><span class="thin"><h6>${restautant.getName()}</h6></span></span></div></td>
                                        <td style="border: 0px transparent;"><span class="red" ><i class="fa fa-ban">${restautant.name}</i> </span></td>


                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </#list>
            </#if>
</body>
</html>