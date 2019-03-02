<!DOCTYPE html>
<html lang="es" dir="ltr" data-light-ogb="true" xmlns="http://www.w3.org/1999/html">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="initial-scale=1.0,minimum-scale=1.0,width=device-width"/>
      <title>iaw-Milestone-2</title>
      <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet" type="text/css">
      <link href="https://fonts.googleapis.com/css?family=Google+Sans:300,400,500" rel="stylesheet" type="text/css">
      <!-- from GH -->
      <link crossorigin="anonymous" media="all" integrity="sha512-RPWwIpqyjxv5EpuWKUKyeZeWz9QEzIbAWTiYOuxGieUq7+AMiZbsLeQMfEdyEIUoNjLagHK0BEm92BmXnvaH4Q==" rel="stylesheet" href="https://github.githubassets.com/assets/frameworks-40c1c9d8ff06284fb441108e6559f019.css" />
      <link crossorigin="anonymous" media="all" integrity="sha512-3CnDMoFJPvbM39ryV5wc51yRo/6j6eQPt5SOlYaoBZhR9rVL/UZH3ME+wt72nsTlNFaSQ3nXT/0F4sxE1zbA6g==" rel="stylesheet" href="https://github.githubassets.com/assets/github-38162889e1878fa3b887aa360e70ab6c.css" />
      <!-- END GH -->
      <meta name="viewport" content="width=device-width">
      <link href="/css/NewStyle.css" rel="stylesheet" type="text/css">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
            rel="stylesheet">
       <style type="text/css">

         .inlinediv{
            display: inline-block;
            vertical-align: top;
         }

         .listings_search{
            width: 100%;
            height: 39px;
         }
         .listings_search_filter{
            width: 100%;
            margin: 0;
            opacity: 0;
            height: 0;
            overflow: hidden;
            transition: height 0.4s ease-out 3s, opacity 0.4s ease-out 3s;
         }
         .listings_search:hover + .listings_search_filter{
            opacity: 1;
            height: 40px;
            transition: opacity 0.4s ease-in 0.2s, height 0.4s ease-in 0.2s;
         }
         .listings_search_filter:hover{
            opacity: 1;
            height: 40px;
         }
         .styled_select{
            margin: 0px 5px;
            display: inline-block;
            vertical-align: top;
            position: relative;
            border: 1px solid #ccc;
            border-radius: 1px;
            width: 150px;
            overflow: hidden;
            background-color: #fff;
            color: #000;
         }
         .styled_select:hover{
            border: 1px solid rgb(58, 62, 65);
         }
         .styled_select:before{

            position: absolute;
            right: 10px;
            top: 13px;
            width: 0;
            height: 0;
            color: #000;
            border-style: solid;
            border-width: 7px 5px 0 5px;
            border-color: #000000 transparent transparent transparent;
            z-index: 5;
            pointer-events: none;
         }
         .styled_select select{
            width: 110%;
            font-size: 15px;
            padding: 0 5px;
            border: none;
            box-shadow: none;
            color: #ffffff;
            background-color: #fff;
            background-image: none;
            appearance: none;
         }
         .sort_button:hover{
            background-color: #e5e5e5;
            border: 1px solid rgb(58, 62, 65);
         }
         .search{
            margin: 0 5px;
         }
         .filter_input[type=text]{
            color: #ffffff;
            margin: 5px;
            width: 225px;
            padding: 5px 0px 6px 8px;
            box-sizing: border-box;
            border: 1px solid #ffffff;
            border-radius: 18px;
            font-size: 15px;
            background-color: #000000;
         }
         .search_input[type=text] {
            width: 300px;
            margin: 0px auto;
            padding: 5px 0px 6px 38px;
            box-sizing: border-box;
            border: 1px solid #ffffff;
            color: #ffffff;
            border-radius: 18px;
            font-size: 16px;
            background-color: #fff;
            background-image: url('/img/logo.jpg');
            background-position: 6px 6px;
            background-repeat: no-repeat;


         }
         .search_input[type=text]:focus {
            border: 1px solid rgb(58, 62, 65);
         }
         .filtersWidget{
            width: 158px;
            margin: 0px 0 10px 0;
            border-left: 4px solid rgb(58, 62, 65);
            background-color: rgb(192, 191, 191);;
            padding: 3px;
            line-height: 20px;
         }
         .listing_box{
            position: relative;
            display: inline-block;
            vertical-align: top;
            width: 150px;
            height: 285px;
            margin: 4px;
            padding: 0px;
            text-align: center;
            background-color: rgb(192, 191, 191);;
         }
         .listing_box hr{
            border-top: 1px dotted #cecece;
            background-color: transparent;
            width: 130px;
         }
         .listing_box:hover{
            box-shadow: 0px 0px 3px 1px rgba(0,170,255,0.4);
         }
         .listing_box_hover{
            opacity: 0;
            width: 150px;
            height: 100px;
            position:absolute;
            bottom: -100px;
            left: 0;
            margin: 0;
            padding: 0;
            background: white;
            z-index: 4;
            transition: opacity 1s;
            /*border-bottom: 1px solid rgb(58, 62, 65);
            border-left: 1px solid rgb(58, 62, 65);
            border-right: 1px solid rgb(58, 62, 65);*/
         }
         .listing_box:hover .listing_box_hover{
            opacity: 1;
         }
         .listing_title{
            padding: 0 5px;
            text-align: left;
            line-height: 15px;
         }
         .listing_box_score_left{
            display: inline-block;
            vertical-align: top;
            width: 96px;
            height: 17px;
            margin-bottom:3px;
         }
         .listing_box_score_right{
            display: inline-block;
            vertical-align: top;
            text-align: right;
            width: 40px;
            height: 17px;
            margin-bottom:3px;
         }
         .listing_box_footer{
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height: 30px;
            padding: 3px;
            line-height: 15px;
            background-color: rgb(192, 191, 191);;
         }
         .listing_box_footer_left{
            display: inline-block;
            vertical-align: top;
            text-align: left;
            width: 150px;
            height: 0px;
            font-size: 12px;
            text-align: left;
         }
         .listing_box_footer_right{
            display: inline-block;
            vertical-align: top;
            text-align: left;
            width: 65px;
            height: 33px;
            font-size: 11px;
         }
         .listing_box img{

         }
         .listing_box h4{
            margin: 0;
            color: #222;
            font-size: 13px;
            margin: 2px 0px;
            padding: 0;
         }
         .listing_box a{
            font-size: 13px;
         }
         /* Inside Listing*/
         .listing_info{
            display: table;
            width: 770px;
            min-height: 200px;
         }
         .listing_image{
            display: table-cell;
            vertical-align:top;
            min-height: 200px;
            padding: 7px;
         }
         .listing_image img{
            border-radius: 3px;
         }
         .listing_right{
            position: relative;
            vertical-align:top;
            width: 420px;
            height: 100%;
            padding: 5px;
            margin-left: 30px;
         }

         .listing_right label{
            display: inline;
         }
         .listing_right input[type=number] {
            -moz-appearance: textfield;
            width: 90px;
            padding: 10px;
            text-align: center;
         }
         .listing_right select {
            width: 300px;
            font-size: 15px;
         }
         .listing_right_footer{
            margin-top: 10px;
            width: 330px;
            text-align: center;
         }
         .buy_button{
            background: transparent;
         }
         .buy_form{
            width: 800px;
            margin: 0 auto;
            text-align: center;
         }
         /* Make listing*/
         .new_listing{
            width: 900px;
            margin: 10px auto;
         }

         .ship_label{
            display: inline;
            width: 400px;
         }
         .wideinput{
            width: 95%;
            margin: 10px 5px;
         }

         /* Products listings
         -----------------------------------------------------------------------------------*/
         .slist{
            width: 460px;
            height: 152px;
            display: inline-block;
            vertical-align:top;
            margin: 5px;
            background-color: rgb(192, 191, 191);;
            border-radius: 6px;
            border: 1px solid #cecece;
            overflow: hidden;
         }
         .slist:hover{
            border: 1px solid rgb(58, 62, 65);
         }
         .slist_left{
            width: 150px;
            height: 152px;
            display: inline-block;
            vertical-align:top;
         }
         .slist_right{
            display: inline-block;
            vertical-align:top;
            width: 305px;
            height: 150px;
         }
         .slist_header{
            height: 60px;
            padding-left: 5px;
         }
         .slist_header a{
            font-size: 14px;
            padding-left: 2px;
         }
         .slist_starrating{
            margin-top: 3px;
         }
         .slist_main{
            height: 90px;
            padding-left: 5px;
         }
         .slist_footer{
            height: 0px;
         }


         /* froms imputs */
         .form-input[type="text"], .form-input[type="password"], .form-input[type="number"], .form-input[type="email"] {
            font-family: "Arial", "Trebuchet MS";
            font-size: 16px;
            font-weight: 300;
            display: inline-block;
            width: 100%;
            color: #000000;
            padding: 5px;
            background-color: #ffffff;
            margin-top: 0px;
            margin-bottom: 5px;
            margin-left: 0px;
            margin-right: 0px;
            border: 1px solid #acc0c9;
            border-radius: 5px;
            outline: 0px;
            box-sizing: border-box;
            line-height: 40px;
            height: 40px; }
         .form-input[type="text"]:focus, .form-input[type="password"]:focus, .form-input[type="number"]:focus, .form-input[type="email"]:focus {
            border: 1px solid rgb(54, 54, 54);
            background-color: #ffffff;
         }

         .form-input[type="file"]{
            font-family: "Arial", "Trebuchet MS";
            font-size: 16px;
            font-weight: 300;
            display: inline-block;
            width: 100%;
            background-color: #ffffff;
            color: #000000;
            padding-top: 0px;
            padding-bottom: 0px;
            margin-top: 0px;
            margin-bottom: 5px;
            margin-left: 0px;
            margin-right: 0px;
            border: 1px solid #acc0c9;
            border-radius: 1px;
            outline: 0px;
            box-sizing: border-box;
            line-height: 40px;
            height: 40px; }

         .form-input[type="date"] {
            font-family: "Arial", "Trebuchet MS";
            font-size: 16px;
            font-weight: 300;
            display: inline-block;
            width: 100%;
            color: #526475;
            padding: 10px;
            margin-top: 0px;
            margin-bottom: 5px;
            margin-left: 0px;
            margin-right: 0px;
            border: 1px solid #acc0c9;
            border-radius: 5px;
            outline: 0px;
            box-sizing: border-box;
            width: auto !important;
            height: 40px; }
         .form-input[type="date"]:focus {
            border: 1px solid rgb(54, 54, 54);
            background-color: #f2faff;
         }

         .form-input[disabled] {
            font-family: "Arial", "Trebuchet MS";
            font-size: 16px;
            font-weight: 300;
            display: inline-block;
            width: 100%;
            color: #526475;
            padding: 10px;
            margin-top: 0px;
            margin-bottom: 5px;
            margin-left: 0px;
            margin-right: 0px;
            border: 1px solid #acc0c9;
            border-radius: 1px;
            outline: 0px;
            box-sizing: border-box;
            cursor: not-allowed;
            background-color: #acc0c9;
            height: 40px; }
         .form-input[disabled]:focus {
            border: 1px solid rgb(54, 54, 54);
            background-color: #f2faff;
         }

         .form-input[type="submit"], .form-input[type="button"] {
            font-family: "Arial", "Trebuchet MS";
            font-size: 16px;
            font-weight: 300;
            -webkit-touch-callout: none;
            -khtml-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            text-align: center;
            text-decoration: none !important;
            line-height: 28px;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 5px;
            margin-bottom: 5px;
            padding-left: 25px;
            padding-right: 25px;
            padding-top: 5px;
            padding-bottom: 5px;
            display: inline-block;
            cursor: pointer;
            border-radius: 1px;
            color: #ffffff;
            background-color: rgb(54, 54, 54);
            border: 0px; }
         .form-input[type="submit"]:hover, .form-input[type="button"]:hover {
            text-decoration: none; }
         .form-input[type="submit"]:hover, .form-input[type="button"]:hover {
            opacity: 0.8; }

         .form-select {
            font-family: "Arial", "Trebuchet MS";
            font-size: 16px;
            font-weight: 300;
            display: inline-block;
            width: 100%;
            color: #000000;
            padding: 5px;
            margin-top: 0px;
            margin-bottom: 5px;
            margin-left: 0px;
            margin-right: 0px;
            border: 1px solid #acc0c9;
            border-radius: 1px;
            outline: 0px;
            box-sizing: border-box;
            padding-top: 6px;
            height: 40px;
            background-color: #ffffff; }
         .form-select:focus {
            border: 1px solid rgb(54, 54, 54);
            background-color: #f2faff;
         }

         .form-textarea {
            font-family: "Arial", "Trebuchet MS";
            font-size: 16px;
            font-weight: 300;
            display: inline-block;
            width: 100%;
            color: #526475;
            padding: 10px;
            margin-top: 0px;
            margin-bottom: 5px;
            margin-left: 0px;
            margin-right: 0px;
            background-color: #ffffff;
            border: 1px solid #acc0c9;
            border-radius: 1px;
            outline: 0px;
            box-sizing: border-box;
            resize: vertical; }
         .form-textarea:focus {
            border: 1px solid rgb(54, 54, 54);
            background-color: #ffffff;
         }

         /** old css from OldSchool */
         .card-horizontal {
            display: flex;
            flex: 1 1 auto;
         }
         .navbar {
            padding: 5px 0;
            width: 100%;
            margin: 0 auto;
         }
         .navbar li {
            display: inline-block;
            text-align: center;
            width: auto;
            margin: 0 10px;
         }
         .navbar li.sep {
            color: #FFF;
            font-size: 16px;
            font-weight: 500;
            margin: 0;
         }
         .navbar li.auth {
            background: #b9d533;
            color: #FFF;
            padding: 0 15px;
            margin-top: 20px;
            line-height: 28px;
            border: none;
            border-radius: 7px;
            box-shadow: 0 2px #8ba028;
         }
         .blackNav {
            width: 100%!important;
            background: #050505;
            margin-top: 0px;
         }


         #yin-yang {

            -webkit-animation: rotation 3s infinite linear;
         }
         @-webkit-keyframes rotation {
            from {
               -webkit-transform: rotate(0deg);
            }
            to {
               -webkit-transform: rotate(359deg);
            }
         }
         #yin-yang:before {

         }
         #yin-yang:after {

         }
         .test{
            content:'tony';
            height:100px;
            width:100px;
            border-radius:55px;
            background:#c9c;
            -webkit-animation: burst_spin 5s infinite linear;
         }

         @-webkit-keyframes burst_spin {
            from { -webkit-transform: rotate(0deg); }
            to { -webkit-transform: rotate(360deg); }
         }
      </style>
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">


      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   </head>
   <body style="background-color: #f5f5f5;">
      <header class="blackNav" style="background-color: black;display: inline-block;width: 100%; height: 80px;">
         <h3 style="font-size: large;color:lime;" class="title">iLOGO</h3>

      </header>
      <div style="margin-top: 12px;">
      </div>
      <div style="margin-top: 14px;">
      </div>
      <div class="container-fluid clearfix">


      </div>
      <br>
      <div role="main" class="application-main " style="background-color: white;">
         <div id="js-pjax-container" data-pjax-container="" style="background-color: white";>
            <div class="container-lg clearfix px-3 mt-4" style="background-color: transparent">
               <div class="h-card col-3 float-left pr-3" style="background-color:white;">
                  <span class="p-name vcard-fullname d-block overflow-hidden" itemprop="name">Hotels</span>
                  <i class="fa fa-key w3-spin" style="font-size:54px"></i>
                  <hr>
                  <div class="vcard-names-container py-3 js-sticky js-user-profile-sticky-fields" style="position: static;">
                     <h1 class="vcard-names">
                        <span class="p-name vcard-fullname d-block overflow-hidden" itemprop="name">Formulario de Registro</span>
                        <span class="p-nickname vcard-username d-block" itemprop="additionalName">¡Registre Ahora su Hotel!</span>
                     </h1>
                     <form method="post" action="/add">
                        <input type="text" class="form-control" id="nameHotel" name="name" required placeholder="Nombre del hotel"/>
                        <input type="text" class="form-control" id="nameHotel" name="imgUri" required placeholder="Pais"/>
                        <input type="text" class="form-control" id="nameHotel" name="description" required placeholder="Breve Descripcion"/>
                        <input type="text" class="form-control" id="nameHotel" name="precio" required placeholder="Precio"/>

                        <button class="btn" value="Submit" type="submit">Añadir</button>

                     </form>
                     <hr>
                     <br>
                     <h5 style="font-family: 'Palatino Linotype'">Buscador por ID</h5>
                     <form class="form" method="post" action="/find">
                        <input type="text" name="uuid" class="form-control device-width js-autosearch-field" placeholder="Ejemplo: 12da0186-8033" required/>

                        <button class="btn" type="submit" value="submit">Buscar</button>

                     </form>
                  </div>
               </div>
               <div class="col-9 float-left pl-2">
                  <div class="position-relative">
                     <!-- <div class="border-bottom border-gray-dark py-3">
                        <form action="/Allz" method="POST">
                           <div class="TableObject-item TableObject-item--primary pr-4">
                              <input type="text"  name="" style="width: 300px;" class="form-control width-full js-autosearch-field" placeholder="Busque un Hotel,Restaurante,Actividad..." autocomplete="off" aria-label="Busque un Hotel,Restaurante,Actividad..." value="">
                           </div>
                           <div class="TableObject-item text-right">
                              <div class="select-menu d-inline-block js-menu-container js-select-menu select-menu-modal-right">
                                 <select class="btn select-menu-button js-menu-target" type="button" aria-haspopup="true" aria-expanded="false">
                                    <option class="js-select-button" selected="">Categories</option>
                                    <option class="js-select-button">Hotels</option>
                                    <option class="js-select-button">Restaurants</option>
                                    <option class="js-select-button">Activities</option>
                                 </select>
                              </div>
                              <button class="button btn ml-3" type="submit" value="Search">
                              SEARCH
                              </button>
                           </div>
                        </form>
                     </div> -->
                     <br>
                     <!-- NewNav BigFilter -->
                     <!-- contentmenu -->
                     <!-- listings_search -->
                     <!-- inlinediv -->
                     <!-- styled_select -->


                        <div class="listings_search">
                           <div class="inlinediv" style="width: 300px;">
                              <form action="#" method="get">
                                 <input type="text" name="search" value="" class="form-control width-full js-autosearch-field" placeholder="Advanced Search" autocomplete="off" style="width: 300px;">
                           </div>
                           <div class="inlinediv"><!-- <div class="styled_select">--><select  name='category' class="btn select-menu-button js-menu-target" type="button" aria-haspopup="true" aria-expanded="false"><option value='' disabled selected class="js-select-button">Select category</option><option value='1' class="js-select-button">··Hoteles </option><option value='2' class="js-select-button">··Restaurants </option><option value='3' class="js-select-button">··Activities </option><option value='4' class="js-select-button"> ··Autos </option><option value='5' class="js-select-button"> ··Rooms </option><option value='6' class="js-select-button"> ··Others </option></select><!--</div>--><input type="submit" value="Search" class="button btn ml-3"></div>
                        </div>
                        <div class="listings_search_filter">
                           <input type="text" name="minprice" class="form-control" placeholder="Min price (EUR)" value="" autocomplete="off">
                           <input type="text" name="maxprice" class=" form-control" placeholder="Max price (EUR)" value="" autocomplete="off">
                           <select name="shipping_to"  class="btn select-menu-button js-menu-target" >
                              <option selected value="" class="js-select-button">Shipping To</option>
                              <option value="Spain" class="js-select-button">Spain</option>
                              <option value="Europe" class="js-select-button">America</option>
                              <option value="Africa" class="js-select-button">Africa</option>
                           </select>
                           <select name="shipping_to"  class="btn select-menu-button js-menu-target" >
                              <option selected value="" class="js-select-button">Shipping From</option>
                              <option value="Spain" class="js-select-button">Spain</option>
                              <option value="Spain" class="js-select-button">Africa</option>
                              <option value="Spain" class="js-select-button">America</option>

                           </select>

                           </form></div>
<br>
                     <hr>





                     <!-- EnD  New BiFilter -->
                     <div id="user-repositories-list">
                        <ul data-filterable-for="your-repos-filter" data-filterable-type="substring">
                           <!-- Esto es lo que muestra cuando se realiza una búqueda por ID -->
                           <#if uu??>
                           <div class="container-fluid" style="background-color: khaki;">
                              <div class="row">
                                 <div class="col-12 mt-3">
                                    <div class="card">
                                       <div class="card-horizontal">
                                          <div class="img-square-wrapper">
                                             <img class="" src="/img/Hilton.jpg" alt="Hotel" style="border: 2px solid black; border-radius: 5px;width: 300px;height: 190px;">
                                          </div>
                                          <div class="card-body">
                                             <h3 class="card-title">${uu.name}</h3>
                                             <cite>
                                                <h6 class="card-title">${uu.id}</h6>
                                             </cite>
                                             <h2 class="card-title" style="color: darkred;">${uu.precio} €</h2>
                                             <p class="card-text">${uu.description}</p>
                                          </div>
                                       </div>
                                       <div class="card-footer">
                                          <small class="text-muted">Last updated 1 mins ago</small>
                                          <button type="button" class="btn btn-outline-primary align-items-end clearfix"><a href="/delete/${uu.id}">BORRAR</a></button>
                                          <button type="button" class="btn btn-outline-primary align-items-end clearfix"><a href="/update/${uu.id}">UPDATE</a></button>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           </#if>
                           <!-- Fin búsqueda por UUID -->
                           <#if datil??>
                           <#list datil as item>
                           <div class="container-fluid">
                              <div class="row">
                                 <div class="col-12 mt-3">
                                    <div class="card">
                                       <div class="card-horizontal">
                                          <div class="img-square-wrapper">
                                             <img class="" src="/img/Hilton.jpg" alt="Hotel" style="border: 2px solid black; border-radius: 5px;width: 300px;height: 190px;">
                                          </div>
                                          <div class="card-body">
                                             <h3 class="card-title">${item.name}</h3>
                                             <cite>
                                                <h6 class="card-title">${item.id}</h6>
                                             </cite>
                                             <h2 class="card-title" style="color: darkred;">${item.precio} €</h2>
                                             <p class="card-text">${item.description}</p>
                                          </div>
                                       </div>
                                       <div class="card-footer">
                                          <small class="text-muted">Last updated 3 mins ago</small>
                                          <button type="button" class="btn btn-outline-primary align-items-end clearfix">        <a href="/delete/${item.id}">BORRAR</a></button>
                                          <button type="button" class="btn btn-outline-primary align-items-end clearfix">        <a href="/update/${item.id}">UPDATE</a></button>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <hr>
                           </#list>
                           </#if>
                           <#if act??>
                           <#list act as act>
                           <div class="container-fluid">
                              <div class="row">
                                 <div class="col-12 mt-3">
                                    <div class="card">
                                       <div class="card-horizontal">
                                          <div class="img-square-wrapper">
                                             <img class="" src="/img/actividad.jpg" alt="Hotel" style="border: 2px solid black; border-radius: 5px;width: 300px;height: 190px;">
                                          </div>
                                          <div class="card-body">
                                             <h3 class="card-title">${act.name}</h3>
                                             <cite>
                                                <h6 class="card-title">${act.id}</h6>
                                             </cite>
                                             <h2 class="card-title" style="color: darkred;">${act.precio} €</h2>
                                             <p class="card-text">${act.description}</p>
                                          </div>
                                       </div>
                                       <div class="card-footer">
                                          <small class="text-muted">Last updated 3 mins ago</small>
                                          <button type="button" class="btn btn-outline-primary align-items-end clearfix">        <a href="/delete/${act.id}">BORRAR</a></button>
                                          <button type="button" class="btn btn-outline-primary align-items-end clearfix">        <a href="/update/${act.id}">UPDATE</a></button>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>

                           </#list>
                           </#if>
                           <#if rest??>
                              <#list rest as rest>
                                 <div class="container-fluid">
                                    <div class="row">
                                       <div class="col-12 mt-3">
                                          <div class="card">
                                             <div class="card-horizontal">
                                                <div class="img-square-wrapper">
                                                   <img class="" src="/img/actividad.jpg" alt="Hotel" style="border: 2px solid black; border-radius: 5px;width: 300px;height: 190px;">
                                                </div>
                                                <div class="card-body">
                                                   <h3 class="card-title">${rest.name}</h3>
                                                   <cite>
                                                      <h6 class="card-title">${rest.id}</h6>
                                                   </cite>
                                                   <h2 class="card-title" style="color: darkred;">${rest.precio} €</h2>
                                                   <p class="card-text">${rest.description}</p>
                                                </div>
                                             </div>
                                             <div class="card-footer">
                                                <small class="text-muted">Last updated 3 mins ago</small>
                                                <button type="button" class="btn btn-outline-primary align-items-end clearfix">        <a href="/delete/${rest.id}">BORRAR</a></button>
                                                <button type="button" class="btn btn-outline-primary align-items-end clearfix">        <a href="/update/${rest.id}">UPDATE</a></button>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>

                              </#list>
                           </#if>
                        </ul>
                        <br>
                        <br>
                        <br>
                        <br>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <br>
         <br><br>
         <br>
      </div>
      <br>
      <br>
     <!-- <footer> <span class="p-name vcard-fullname d-block overflow-hidden" itemprop="name">Antonio Nicolau Batle</span></footer> -->
   </body>
</html>