<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>
    <xsl:param name="TipoMenu" select="TipoMenu"></xsl:param>

    <xsl:template match="Menu">
      <html lang="en">
        <head>
          <meta charset="utf-8"/>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
              <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <title>La esquina</title>
                <!-- <xsl:value-of select="Datos/NombreRestaurant"/> Template
                      http://www.templatemo.com/tm-466-cafe-house
-->
                <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'/>
                  <link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'/>
                    <link href="css/bootstrap.min.css" rel="stylesheet"/>
                      <link href="css/font-awesome.min.css" rel="stylesheet"/>
                        <link href="css/templatemo-style.css" rel="stylesheet"/>
                          <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />

                          <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
                          <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
                          <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
          <!-- JS -->
          <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
          <!-- jQuery -->
          <script type="text/javascript" src="js/templatemo-script.js"></script>
          <script type="text/javascript" src="javascripts/jquery.googlemap.js"></script>
          <!-- Templatemo Script -->

                        </head>
        <body>
          
          <!-- Preloader -->
          <div id="loader-wrapper">
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
          </div>
          <!-- End Preloader -->
          <div class="tm-top-header">
            <div class="container">
              <div class="row">
                <div class="tm-top-header-inner">
                  <div class="tm-logo-container">
                    <img src="../img/logo.png" alt="Logo" class="tm-site-logo"/>
                    <h1 class="tm-site-name tm-handwriting-font">
                      <xsl:value-of select="Datos/NombreRestaurant"/>
                    </h1>                 
                     </div>
                  <div class="mobile-menu-icon">
                    <i class="fa fa-bars"></i>
                  </div>
                  <nav class="tm-nav">
                    <ul>
                     <!--este es el foreach-->
                      <xsl:for-each select="Opciones/Opcion" >
                        <xsl:choose>
                          <xsl:when test="$TipoMenu=@Id">
                            <li>
                              <a href="{@Url}" class="active">
                                <xsl:value-of select="@Texto"/>
                              </a>
                            </li>
                          </xsl:when>
                          <xsl:otherwise>
                            <li>
                              <a href="{@Url}">
                                <xsl:value-of select="@Texto"/>
                              </a>
                            </li>
                          </xsl:otherwise>
                        </xsl:choose>
                      </xsl:for-each>
                    </ul>
                  </nav>              
               </div>
              </div>
            </div>          
          </div>     
        <xsl:choose>
            <xsl:when test="$TipoMenu=1">
              <xsl:call-template name="Carta"></xsl:call-template>
            </xsl:when>
            <xsl:when test="$TipoMenu=2">
              <xsl:call-template name="Contacto"></xsl:call-template>
            </xsl:when>
            <xsl:when test="$TipoMenu=3">
              <xsl:call-template name="PlayRoom"></xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:call-template name="Home"></xsl:call-template>
            </xsl:otherwise>
          </xsl:choose>

         
          <footer>
            <div class="tm-black-bg">
              <div class="container">
                <div class="row margin-bottom-60">
                  <nav class="col-lg-3 col-md-3 tm-footer-nav tm-footer-div">
                    <h3 class="tm-footer-div-title">Main Menu</h3>
                    <ul>
                      <li>
                        <a href="#">Home</a>
                      </li>
                      <li>
                        <a href="#">About Us</a>
                      </li>
                      <li>
                        <a href="#">Directory</a>
                      </li>
                      <li>
                        <a href="#">Blog</a>
                      </li>
                      <li>
                        <a href="#">Our Services</a>
                      </li>
                    </ul>
                  </nav>
                  <div class="col-lg-5 col-md-5 tm-footer-div">
                    <h3 class="tm-footer-div-title">About Us</h3>
                    <p class="margin-top-15">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.</p>
                    <p class="margin-top-15">Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus.</p>
                  </div>
                  <div class="col-lg-4 col-md-4 tm-footer-div">
                    <h3 class="tm-footer-div-title">Get Social</h3>
                    <p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante.</p>
                    <div class="tm-social-icons-container">
                      <a href="#" class="tm-social-icon">
                        <i class="fa fa-facebook"></i>
                      </a>
                      <a href="#" class="tm-social-icon">
                        <i class="fa fa-twitter"></i>
                      </a>
                      <a href="#" class="tm-social-icon">
                        <i class="fa fa-linkedin"></i>
                      </a>
                      <a href="#" class="tm-social-icon">
                        <i class="fa fa-youtube"></i>
                      </a>
                      <a href="#" class="tm-social-icon">
                        <i class="fa fa-behance"></i>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div class="container">
                <div class="row tm-copyright">
                  <p class="col-lg-12 small copyright-text text-center">Copyright  2084 Your La esquina</p>
                </div>
              </div>
            </div>
          </footer>
          <!--Footer content-->
        </body>
      </html>      
    </xsl:template>
  
  <xsl:template name="Home">
    <section class="tm-welcome-section">
      <div class="container tm-position-relative">
        <div class="tm-lights-container">
          <img src="../img/light.png" alt="Light" class="light light-1"/>
          <img src="../img/light.png" alt="Light" class="light light-2"/>
          <img src="../img/light.png" alt="Light" class="light light-3"/>  
        </div>
        <div class="row tm-welcome-content">
          <h2 class="white-text tm-handwriting-font tm-welcome-header">
            <img src="../img/header-line.png" alt="Line" class="tm-header-line"/>
              Bienvenido a <img src="../img/header-line.png" alt="Line" class="tm-header-line"/>
          </h2>
          <h2 class="gold-text tm-welcome-header-2">
          <xsl:value-of select="Datos/NombreRestaurant"/>
          </h2>
          <p class="gray-text tm-welcome-description">                       
            <xsl:value-of select="Datos/Descripcion"></xsl:value-of>
          </p>
          <a href="#main" class="tm-more-button tm-more-button-welcome">Conócenos</a>
        </div>
        <img src="../img/table-set.png" alt="Table Set" class="tm-table-set img-responsive"/>
      </div>
    </section>  
    <div class="tm-main-section light-gray-bg">
      <div class="container" id="main">
        <section class="tm-section row">
          <div class="col-lg-9 col-md-9 col-sm-8">
            <h2 class="tm-section-header gold-text tm-handwriting-font">Visitanos en:</h2>
            <h2>
            <xsl:value-of select="Datos/NombreRestaurant"/>
            </h2>
            <p class="tm-welcome-description">
              <xsl:value-of select="concat(Datos/Direccion, 'Tel: ', Datos/Telefono)"></xsl:value-of>
            </p>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-4 tm-welcome-img-container">
            <div class="inline-block shadow-img">         
              <img src="{Datos/Imagen}" alt ="Image" class="img-circle img-thumbnail"></img>
            </div>
          </div>
        </section>
        <section class="tm-section tm-section-margin-bottom-0 row">  <div class="col-lg-12 tm-section-header-container">
            <h2 class="tm-section-header gold-text tm-handwriting-font">
              <img src="../img/logo.png" alt="Logo" class="tm-site-logo"/> Especialidades:
            </h2>
            <div class="tm-hr-container">
              <hr class="tm-hr"/>
            </div>
          </div>   
         <div class="col-lg-12 tm-popular-items-container">
           <!--FOREACH-->
              <xsl:for-each select="Platillos/Tipo[@Nombre!='Bebidas']/Platillo[@Orden=1]" >           
            <div class="tm-popular-item">
              <img src="{Imagen}" alt="Popular" class="tm-popular-item-img"/>
                <div class="tm-popular-item-description">
                  <h3 class="tm-handwriting-font tm-popular-item-title">
                    <span class="tm-handwriting-font bigger-first-letter">
                      <xsl:value-of select="substring(@Nombre,1,1)"/>
                      </span>
                    <xsl:value-of select="substring(@Nombre,2,85)"/>
                  </h3>
                  <hr class="tm-popular-item-hr"/>
                  <p>
                   <xsl:value-of select="Descripcion"/>                </p>
                    <div class="order-now-container">
                      <a href="#" class="order-now-link tm-handwriting-font">
                        <xsl:value-of select="Precio"/>
                      </a>
                    </div>
                  </div>
              </div>
                </xsl:for-each>       
          </div>
        </section>
        <section class="tm-section row">
          <div class="col-lg-12 tm-section-header-container">
            <h2 class="tm-section-header gold-text tm-handwriting-font">
              <img src="../img/logo.png" alt="Logo" class="tm-site-logo"/> Today's Special
            </h2>
            <div class="tm-hr-container">
              <hr class="tm-hr"/>
            </div>
          </div>
          <div class="col-lg-12 tm-special-container margin-top-60">
            <div class="tm-special-container-left">
              <!-- left -->
              <xsl:for-each select="Platillos/Tipo[@Nombre='Comidas']/Platillo[@Especialidad='SI']">    <div class="tm-special-item">
                <div class="tm-special-img-container">
                  <img src="{Imagen[position()=1]}" alt="Special" class="tm-special-img img-responsive"/>
                    <a href="#">
                      <div class="tm-special-description">
                        <h3 class="tm-special-title">
                          <xsl:value-of select="@Nombre"/>
                        </h3>
                        <p>
                          <xsl:value-of select="TextoEspecial"/>
                        </p>                      
                      </div>
                    </a>
                  </div>
              </div>
                </xsl:for-each>
            </div>
            <div class="tm-special-container-right">
              <!-- right -->
              <div>
                <xsl:for-each select="Platillos/Tipo[@Nombre='Comidas']/Platillo[@Especialidad='SI']">  <div class="tm-special-item">
                  <div class="tm-special-img-container">
                    <img src="{Imagen[position()=2]}" alt="Special" class="img-responsive"/>
                      <a href="#">
                        <div class="tm-special-description">
                          <h3 class="tm-special-title">
                            <xsl:value-of select="Ingredientes/Ingrediente[position()=1]/@Nombre"/>
                          </h3>
                          <p>
                            <xsl:value-of select="Ingredientes/Ingrediente[position()=1]"/>
                        </p>
                        </div>
                      </a>
                    </div>
                </div>
                  </xsl:for-each>
              </div>
              <div class="tm-special-container-lower">
                <xsl:for-each select="Platillos/Tipo[@Nombre='Comidas']/Platillo[@Especialidad='SI']/Ingredientes/Ingrediente[position()&gt;1]">
                <div class="tm-special-item">
                  <div class="tm-special-img-container">
                    <img src="{@Imagen}" alt="Special" class="img-responsive"/>
                      <a href="#">
                        <div class="tm-special-description">
                          <p>
                            <xsl:value-of select="@Nombre"/>
                          </p>
                        </div>
                      </a>
                    </div>
                </div>               
                   </xsl:for-each>
              </div>
            </div>
          </div>
        </section>
        <section class="tm-section">
          <div class="row">
            <div class="col-lg-12 tm-section-header-container">
              <h2 class="tm-section-header gold-text tm-handwriting-font">
                <img src="../img/logo.png" alt="Logo" class="tm-site-logo"/> Daily Menu
              </h2>
              <div class="tm-hr-container">
                <hr class="tm-hr"/>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="tm-daily-menu-container margin-top-60">
              <div class="col-lg-4 col-md-4">
                <img src="../img/menu-board.png" alt="Menu board" class="tm-daily-menu-img"/>      
              </div>
              <div class="col-lg-8 col-md-8">
                <p>Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>
                <ol class="margin-top-30">
                  <li>Tellus eget condimentum rhoncus.</li>
                  <li>Sem quam semper libero.</li>
                  <li>Sit amet adipiscing sem neque sed ipsum.</li>
                  <li>Nam quam nunc, blandit vel, luctus pulvinar.</li>
                  <li>Maecenas nec odio et ante tincidunt tempus.</li>
                  <li>Donec vitae sapien ut libero ventenatis faucibus.</li>
                </ol>
                <a href="#" class="tm-more-button margin-top-30">Read More</a>
              </div>
            </div>
          </div>
        </section>
      </div>
    </div>
  </xsl:template>
  

<xsl:template name="Carta">
  <section class="tm-welcome-section">
      <div class="container tm-position-relative">
        <div class="tm-lights-container">
          <img src="../img/light.png" alt="Light" class="light light-1"/>
          <img src="../img/light.png" alt="Light" class="light light-2"/>
          <img src="../img/light.png" alt="Light" class="light light-3"/>  
        </div>
        <div class="row tm-welcome-content">
          <h2 class="white-text tm-handwriting-font tm-welcome-header">
            <img src="../img/header-line.png" alt="Line" class="tm-header-line"/>
            Our Menus<img src="../img/header-line.png" alt="Line" class="tm-header-line"/>
          </h2>
          <h2 class="gold-text tm-welcome-header-2">
          <xsl:value-of select="Datos/NombreRestaurant"/>
          </h2>
          <p class="gray-text tm-welcome-description">
            <xsl:value-of select="Datos/Descripcion"></xsl:value-of>
          </p>
          <a href="#main" class="tm-more-button tm-more-button-welcome">Ir a la carta</a>
        </div>
        <img src="../img/table-set.png" alt="Table Set" class="tm-table-set img-responsive"/>
      </div>
    </section>  
  <div class="tm-main-section light-gray-bg">
      <div class="container" id="main">                
        <section class="tm-section row">
          <div class="col-lg-12 tm-section-header-container margin-bottom-30">
            <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"/> Nuestros platillos</h2>
            <div class="tm-hr-container">
              <hr class="tm-hr"/>
            </div>
          </div>
          <div>
            <div class="col-lg-3 col-md-3">
              <div class="tm-position-relative margin-bottom-30">     <nav class="tm-side-menu">
                  <ul>
                    <!--este es el foreach-->
                      <xsl:for-each select="Platillos/Tipo">       
                            <li>
                             <a data-id="{@Nombre}" id="li{@Nombre}" class="tipomenu" style="cursor:pointer;">
                                <xsl:value-of select="@Nombre"/>
                              </a>
                            </li>                          
                      </xsl:for-each>
                  </ul>              
                </nav>    
                <img src="img/vertical-menu-bg.png" alt="Menu bg" class="tm-side-menu-bg"/>
              </div>  
            </div>   
             <xsl:for-each select="Platillos/Tipo">               
            <div style="display:none;" id="{@Nombre}" class="tipoplatillo tm-menu-product-content col-lg-9 col-md-9"> 
              <!-- menu content -->
              <xsl:for-each select="Platillo" >
                    <div class="tm-product">
                  <img src="{Imagen}" class="imagenplatillo" alt="Product"/>
                  <div class="tm-product-text">
                    <h3 class="tm-product-title">
                      <br>
                      <xsl:value-of select="@Nombre"/>                   </br>
                    </h3>
                    <p class="tm-product-description">
                      <xsl:value-of select="Descripcion"/>
                    </p>
                  </div>
                  <div class="tm-product-price">
                    <a href="#" class="tm-product-price-link tm-handwriting-font">
                      <span class="tm-product-price-currency">
                        <xsl:value-of select="substring(normalize-space(Precio),1,1)"/>
                      </span>
                      <xsl:value-of select="substring(normalize-space(Precio),2,10)"/>
                    </a>
                  </div>
                 </div> 
                </xsl:for-each>
              </div>
               </xsl:for-each>
            </div>
        </section>
      </div>
    </div>
  <script >
    $(document).ready(function()
    {
    $("#Desayunos").show();
    $("#liDesayunos").addClass("active");
    $(".tipomenu").click(function()
    {
      var nombre = $(this).data("id");
      $(".tipomenu").removeClass("active");
      $(this).addClass("active");
      $(".tipoplatillo").hide();
      $("#"+ nombre).show();
    });
    });
  </script>

  </xsl:template>
  

<xsl:template name="Contacto">
  <script src="//maps.googleapis.com/maps/api/js?key=AIzaSyCWeeateTaYGqsHhNcmoDfT7Us-vLDZVPs&amp;sensor=false&amp;language=en"></script>
  <script src="js/geolocalizacion.js"></script>
  
  <section class="tm-welcome-section">
      <div class="container tm-position-relative">
        <div class="tm-lights-container">
          <img src="../img/light.png" alt="Light" class="light light-1"/>
          <img src="../img/light.png" alt="Light" class="light light-2"/>
          <img src="../img/light.png" alt="Light" class="light light-3"/>  
        </div>
        <div class="row tm-welcome-content">
          <h2 class="white-text tm-handwriting-font tm-welcome-header">
            <img src="../img/header-line.png" alt="Line" class="tm-header-line"/>
             Contact Us <img src="../img/header-line.png" alt="Line" class="tm-header-line"/>
          </h2>
          <h2 class="gold-text tm-welcome-header-2">
          <xsl:value-of select="Datos/NombreRestaurant"/>
          </h2>
          <!--<p class="gray-text tm-welcome-description">
           <xsl:value-of select="concat(Datos/Direccion,' Tel: ', Datos/Telefono)"/>
          </p>-->
          <p class="gray-text tm-wlcome-descrption">
            <text id="direccion" class="gold-text"></text>
            <div id="street"></div>
          </p>
          <a href="#main" class="tm-more-button tm-more-button-welcome">Reservaciones</a>
        </div>
        <img src="../img/table-set.png" alt="Table Set" class="tm-table-set img-responsive"/>
      </div>
    </section>

  <div class="tm-main-section light-gray-bg">
    <div class="container" id="main">
      <section class="tm-section row">
        <div class="col-lg-12 tm-section-header-container margin-bottom-30">
        <h2 class=" tm-section-header gold-text tm-handwriting-font">
        <img src="img/logo.png" alt="Logo" class="tm-site-logo"/>Reserva tu mesa
        </h2>
          </div>
        <!--personas.valueAsNumber-->
        <!--oninput="Total.value=parseInt(contact_personas.value)+parseInt(contact_extra.value)"-->
        <form action="contacto.aspx" method="post" class="tm-contact-form" oninput="Total.value=parseInt(contact_personas.value)+parseInt(contact_extra.value)">
          <div class="col-lg-6 col-md-6">
            <div class="form-group">
              <label>Nombre</label>
              <input type="text" id="contact_name"  name="contact_name" class="form-control" placeholder="Nombre" required=""/>
            </div>
            <div class="form-group">
              <label>Correo</label>
              <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Correo" required=""/>
            </div>
            <div class="form-group">
              <label>Número de personas</label>
              <input type="number" id="contact_personas" name="contact_personas" value="1" min="1" max="6" class="form-control" requiered=""/>
            </div>
            <div class="form-group">
              <label>Personas extra</label>
              <input type="number" id="contact_extra" name="contact_extra" min="0" value="0" class="form-control" required=""/>
            </div>
            <div class="form-group">
              <label>Fecha</label>
              <input type="date" id="contact_fecha" name="contact_fecha" class="form-control" placeholder="dd/mm/aaaa" required=""/>
            </div>
            <div class="form-group">
              <label>Hora</label>
              <input type="time" id="contact_hora" name="contact_hora" class="form-control" min="06:00:00" max="22:00:00" required=""/>
            </div>

            <div class="form-group">
              <label>Total</label>
              <output type="number" id="Total" name="Total" for="contact_personas contact_extra" min="0" class="form-control"></output>
            </div>
            <div class="form-group">
              <button class="tm-more-button" type="submit" name="submit">Reservar</button>
            </div>
          </div>          
          <div class="col-lg-6 col-md-6">
            <div id="google-map">
              <div id="mapa"></div>
            </div>  
          </div>
        </form>
      </section>
    </div>
  </div>
  <script>
    <![CDATA[
    $(document).ready(function(){
    //Asignamos la hora actual al control de hora
    //var timeControl = $("#contact_hora").get(0);
    var timeControl = document.querySelector('input[type="time"]');
    var now = new Date(Date.now());
    var hora = now.getHours();
    var minutos = now.getMinutes();
    if (hora < 10)
    {
    hora = "0" + hora;
    }
    if (minutos < 10)
    {
    minutos = "0" + minutos;
    }
    var formatted = hora + ":" + minutos;
    timeControl.value = formatted;
    
    
    //validamos que se seleccione la fecha apartir del día actual
    var dd = now.getDate();
    var mm = now.getMonth()+1; //Enero = 0
    var yyyy = now.getFullYear();
    if(dd<10) {dd='0' + dd;}
    if(mm<10) {mm='0' + mm;}
    //2019-12-31
    var today = yyyy + '-' + mm + '-' + dd;
    $("#contact_fecha").attr("min", today);
    //se agrega atributo "min" para no poder reservar para ayer
    //$("#contact_hora").attr("min", formatted + ':00');
    
    getGeo();
    dibujaMapa(19.071984, -98.218453);
    });
    ]]>
  </script> 


</xsl:template>


  <xsl:template name="PlayRoom">
    <script src="/js/draganddrop.js"></script>
    <section class="tm-welcome-section">
      <div class="container tm-position-relative">
        <div class="tm-lights-container">
          <img src="img/light.png" alt="Light" class="light light-1"/>
          <img src="img/light.png" alt="Light" class="light light-2"/>
          <img src="img/light.png" alt="Light" class="light light-3"/>
        </div>
        <div class="row tm-welcome-content">
          <h2 class="white-text tm-handwriting-font tm-welcome-header">
            <img src="img/header-line.png" alt="Line" class="tm-header-line"/>Contact Us<img src="img/header-line.png" alt="Line" class="tm-header-line"/>
          </h2>
          <h2 class="gold-text tm-welcome-header-2">
            <xsl:value-of select="Datos/NombreRestaurant"/>
          </h2>
          <p class="gray-text tm-welcome-description">
            <text class="gold-text"><![CDATA[ Video,Audio y Drag & Drop con HTML5]]></text>
            <div id="video">
              <video controls="" width="100%" poster="/img/wrc.jpg">
                <source src="/Multimedia/wrc.mp4"></source>
              </video>
            </div>
          </p>
          <a href="#main" class="tm-more-button tm-more-button-welcome">Jugar</a>
        </div>
        <img src="img/table-set.png" alt="Table Set" class="tm-table-set img-responsive"/>
      </div>
    </section>
    <div class="tm-main-section light-gray-bg">
      <div class="container" id="main">
        <section class="tm-section row">
          <h2 class="col-lg-12 margin-bottom-30"><![CDATA[Drag & Drop]]></h2>
          <div id="cuadro1" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return drop(event)" >
            <div class="cuadradito" id="arrastrable1" draggable="true" ondragstart="start(event)" ondragend="end(event)"  ></div>
            <div class="cuadradito" id="arrastrable2" draggable="true" ondragstart="start(event)" ondragend="end(event)" ></div>
            <div class="cuadradito" id="arrastrable3" draggable="true" ondragstart="start(event)" ondragend="end(event)" ></div>
          </div>
          <div id="cuadro2" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return drop(event)"></div>
          <div id="cuadro3" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return clonar(event)">Clonadora</div>
          <div id="papelera" ondragenter="return enter(event)" ondragover="return over(event)" ondragleave="return leave(event)" ondrop="return eliminar(event)">Papelera</div>
        </section>
        <section class="tm-section row">
          <h2 class="col-lg-12 margin-bottom-30"><![CDATA[Audio Html5]]></h2>
          <div id="ContenedorAudio">
            <div id="fotoAudio" style="width:100%">
              <img src="/img/wrc2.jpg" width="100%"></img>
              <audio controls="" style="width:100%">
                <source src="/multimedia/audio.mp3"></source>
              </audio>
            </div>
          </div>
        </section>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
