<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    
	<%-- <%@ include file="./include/header.jsp"%> --%>
  
<!DOCTYPE html>
  <head>
    <title>Polygon HTML5 CSS Template</title>
    <meta name="keywords" content="" />
	<meta name="description" content="" />
    <!-- 
    Polygon Template
    http://www.templatemo.com/tm-400-polygon
    -->
    <!-- encoding type -->
    <meta charset="UTF-8">
     
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--     bootstrap.min.css -->
    ${ctxPath = pageContext.request.contextPath; ''}
    
    <!-- Bootstrap -->
    <link href="${ctxPath}/css/Customized/css2/bootstrap.min.css" rel="stylesheet">
    <link href="${ctxPath}/css/Customized/css2/font-awesome.min.css" rel="stylesheet">
    <link href="${ctxPath}/css/Customized/css2/templatemo_misc.css" rel="stylesheet" >
    <link href="${ctxPath}/css/Customized/css2/templatemo_style.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,600' rel='stylesheet' type='text/css'>
      
      
<%-- 	<link href="${pageContext.request.contextPath}/resource/css/header.css" rel="stylesheet" type="text/css"> --%>
      
    <script src="${ctxPath}/js/Customized/jquery-1.10.2.min.js"></script> 
	<script src="${ctxPath}/js/Customized/jquery.lightbox.js"></script>
	<script src="${ctxPath}/js/Customized/templatemo_custom.js"></script>
    <script>
    function showhide()
    {
    	var div = document.getElementById("newpost");
		if (div.style.display !== "none")
		{
			div.style.display = "none";
		}
		else {
			div.style.display = "block";
		}
    }
  	</script>

<style>


.navbar {
	font-family: Montserrat, sans-serif;
	margin-bottom: 0;
	background-color: #2d2d30;
	border: 0;
	font-size: 11px !important;
	letter-spacing: 4px;
	opacity: 0.9;
}
 @CHARSET "UTF-8";

body {
	font: 400 15px/1.8 Lato, sans-serif;
	color: #777;
}

h3, h4 {
	margin: 10px 0 30px 0;
	letter-spacing: 10px;
	font-size: 20px;
	color: #111;
}
/*
.moviecontainer {
	padding: 80px 120px;
}
*/
.person {
	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 80%;
	height: 80%;
	opacity: 0.7;
}

.person:hover {
	border-color: #f1f1f1;
}

.carousel-inner img {
	-webkit-filter: grayscale(90%);
	filter: grayscale(90%); /* make all photos black and white */
	width: 100%; /* Set width to 100%  */
 	margin: auto; 
 } 
.carousel-caption h3 {
	color: #fff !important;
}

@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
		/* Hide the carousel text when the screen is less than 600 pixels wide */
	}
}

.bg-1 {
	background: #2d2d30;
	color: #bdbdbd;
}

.bg-1 h3 {
	color: #fff;
}

.bg-1 p {
	font-style: italic;
}

.list-group-item:first-child {
	border-top-right-radius: 0;
	border-top-left-radius: 0;
}

.list-group-item:last-child {
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail p {
	margin-top: 15px;
	color: #555;
}

.btn {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}

.modal-header, h4, .close {
	background-color: #333;
	color: #fff !important;
	text-align: center;
	font-size: 30px;
}

.modal-header, .modal-body {
	padding: 40px 50px;
}

.nav-tabs li a {
	color: #777;
}

#googleMap {
	width: 100%;
	height: 400px;
	-webkit-filter: grayscale(100%);
	filter: grayscale(100%);
}

.navbar {
	font-family: Montserrat, sans-serif;
	margin-bottom: 0;
	background-color: #2d2d30;
	border: 0;
	font-size: 11px !important;
	letter-spacing: 4px;
	opacity: 0.9;
}

.navbar li a, .navbar .navbar-brand {
	color: #d5d5d5 !important;
}

.navbar-nav li a:hover {
	color: #fff !important;
}

.navbar-nav li.active a {
	color: #fff !important;
	background-color: #29292c !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
}

.open .dropdown-toggle {
	color: #fff;
	background-color: #555 !important;
}

.dropdown-menu li a {
	color: #000 !important;
}

.dropdown-menu li a:hover {
	background-color: red !important;
}

footer {
	background-color: #2d2d30;
	color: #f5f5f5;
	padding: 32px;
}

footer a {
	color: #f5f5f5;
}

footer a:hover {
	color: #777;
	text-decoration: none;
}

.form-control {
	border-radius: 0;
}

textarea {
	resize: none;
}

#menu-1 {
	margin-top: 200px;
	/* 	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 500px;
	height: 1000%;
	opacity: 0.7;
	background-color: blue; */
}












</style>



  </head>
  <body>
  
  
  
  
  
  
  
  
  	<%-- <div class="site-header">
		<div class="main-navigation">
			<div class="responsive_menu">
				<ul>
					<li><a class="show-1 templatemo_home" href="#">Gallery</a></li>
					<li><a class="show-2 templatemo_page2" href="#">Our team</a></li>
					<li><a class="show-3 templatemo_page3" href="#">Services</a></li>
					<li><a class="show-5 templatemo_page5" href="#">Contact</a></li>
				</ul>
			</div>
			<div class="moviecontainer">
				<div class="row templatemo_gallerygap">
					<div class="col-md-12 responsive-menu">
						<a href="#" class="menu-toggle-btn">
				            <i class="fa fa-bars"></i>
				        </a>
					</div> <!-- /.col-md-12 -->
                    <div class="col-md-3 col-sm-12">
                    	<a href="#"><img src="${ctxPath}/resource/img/images2/templatemo_logo.jpg" alt="Polygon HTML5 Template"></a>
                    </div>
					<div class="col-md-9 main_menu">
						<ul>
							<li><a class="show-1 templatemo_home" href="#">
                            	<span class="fa fa-camera"></span>
                                Gallery</a></li>
							<li><a class="show-2 templatemo_page2" href="#">
                            	<span class="fa fa-users"></span>
                          		  Our team</a></li>
							<li><a class="show-3 templatemo_page3" href="#">
                            	<span class="fa fa-cogs"></span>
                            	Services</a></li>
							<li><a class="show-5 templatemo_page5" href="#">
                            	<span class="fa fa-envelope"></span>
                                Contact</a></li>
						</ul>
					</div> <!-- /.col-md-12 -->
				</div> <!-- /.row -->
			</div> <!-- /.moviecontainer -->
		</div> <!-- /.main-navigation -->
	</div> <!-- /.site-header --> 
	<div id="menu-moviecontainer">--%>
	
	
	
	
	
	
<!-- 	<div class="blankArea"> 3<br>3<br>3<br>3<br>3<br>3<br>3<br>3<br>3<br></div> -->
	
    <!-- gallery start -->
    <div class="content homepage" id="menu-1">
    <div class="moviecontainer">
	    <div class="row templatemorow">
    		<div class="hex col-sm-6">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/movie/movieImg/be_with_you.jpg);">
             	 	<div class="overlay">
						<a href="#" class="switch"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
    <div class="hex col-sm-6">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/2.jpg);">
              	<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/2.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
    <div class="hex col-sm-6  templatemo-hex-top2">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/3.jpg);">
              	<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/3.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
    <div class="hex col-sm-6  templatemo-hex-top3">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/4.jpg);">
              	<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/4.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
    <div class="hex col-sm-6  templatemo-hex-top3">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/5.jpg);">
              		<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/5.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
  	     <div class="hex col-sm-6 hex-offset templatemo-hex-top1 templatemo-hex-top2">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/6.jpg);">
              		<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/6.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
     <div class="hex col-sm-6 templatemo-hex-top1 templatemo-hex-top3">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/7.jpg);">
              		<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/7.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
      <div class="hex col-sm-6 templatemo-hex-top1  templatemo-hex-top3">
      	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/8.jpg);">
              		<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/8.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="hex col-sm-6 templatemo-hex-top1  templatemo-hex-top2">
      	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/9.jpg);">
              		<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/9.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    	</div>
	</div>
    <div  id="newpost" style="display:none;" class="moviecontainer answer_list templatemo_gallerytop">
	    <div class="row templatemorow">
    		<div class="hex col-sm-6">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/10.jpg);">
             	 	<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/10.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
    <div class="hex col-sm-6">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/11.jpg);">
              	<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/11.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
    <div class="hex col-sm-6  templatemo-hex-top2">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/12.jpg);">
              	<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/12.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
    <div class="hex col-sm-6  templatemo-hex-top3">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/13.jpg);">
              	<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/13.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
    <div class="hex col-sm-6  templatemo-hex-top3">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/14.jpg);">
              		<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/14.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
  	     <div class="hex col-sm-6 hex-offset templatemo-hex-top1 templatemo-hex-top2">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/15.jpg);">
              		<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/15.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
     <div class="hex col-sm-6 templatemo-hex-top1 templatemo-hex-top3">
    	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/16.jpg);">
              		<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/16.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
    </div>
      <div class="hex col-sm-6 templatemo-hex-top1  templatemo-hex-top3">
      	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/17.jpg);">
              		<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/17.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="hex col-sm-6 templatemo-hex-top1  templatemo-hex-top2">
      	<div>
          <div class="hexagon hexagon2 gallery-item">
            <div class="hexagon-in1">
              <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/gallery/18.jpg);">
              		<div class="overlay">
						<a href="${ctxPath}/resource/img/images2/gallery/18.jpg" data-rel="lightbox" class="fa fa-expand"></a>
					</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    	</div>
	</div>
    <div class="moviecontainer">
    	<div class="row">
        	<div class="templatemo_loadmore">
			 <button class="gallery_more" id="button" onClick="showhide()">Load More</button>
            </div>
        </div>
    </div>
    </div>
      <!-- gallery end -->
    <!-- team start -->
    <div class="content team" id="menu-2">
     <div class="templatemo_ourteam">
     		<div class="moviecontainer templatemo_hexteam">
            	<div class="row">
                	<div class="col-md-3 col-sm-4">
                        	 <div class="hexagon hexagonteam gallery-item">
                               <div class="hexagon-in1">
                                <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/team/1.jpg);">
                                <div class="overlay templatemo_overlay1">
                                	<a href="#fb">
                                   	 <div class="smallhexagon">
                                  	 	 <span class="fa fa-facebook"></span>
                                 	  </div>
                                    </a>

                                    <a href="#tw">
                                     <div class="smallhexagon">
                                       <span class="fa fa-twitter"></span>
                                    </div>
                                    </a>

                                    <a href="#ln">
                                     <div class="smallhexagon">
                                       <span class="fa fa-linkedin"></span>
                                    </div>
                                    </a>

                                    <a href="#rs">
                                     <div class="smallhexagon">
                                       <span class="fa fa-rss"></span>
                                    </div>
                                    </a>
                                </div>
                                <div class="clear"></div>
                               	<div class="overlay templatemo_overlaytxt">Phasellus interdum</div>
                                </div>
                            </div>
                          </div>
  			       </div>
                    <div class="col-md-3 col-sm-8 templatemo_servicetxt" >
                    	<h2>Free Template</h2>
                        <p>Polygon is free HTML5 template by <span class="blue">template</span><span class="green">mo</span> that can be used for any purpose. You can remove any credit link. Please tell your friends about our website. Credit goes to <a rel="nofollow" href="http://unsplash.com">Unsplash</a> for images used in this template. Feel free to visit <a href="http://www.facebook.com/templatemo" target="_parent">templatemo page</a> on Facebook.</p>
                    </div>
                    <div class="templatemo_servicecol2">
                    <div class="col-md-3 col-sm-4">
                        	 <div class="hexagon hexagonteam gallery-item">
                               <div class="hexagon-in1">
                                <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/team/2.jpg);">
                                <div class="overlay templatemo_overlay1">
                                	<a href="#fb">
                                   	 <div class="smallhexagon">
                                  	 	 <span class="fa fa-facebook"></span>
                                 	  </div>
                                    </a>
                                    <a href="#tw">
                                     <div class="smallhexagon">
                                       <span class="fa fa-twitter"></span>
                                    </div>
                                    </a>
                                    <a href="#ln">
                                     <div class="smallhexagon">
                                       <span class="fa fa-linkedin"></span>
                                    </div>
                                    </a>
                                    <a href="#rs">
                                     <div class="smallhexagon">
                                       <span class="fa fa-rss"></span>
                                    </div>
                                    </a>
                                </div>
                                
                                <div class="clear"></div>
                               	<div class="overlay templatemo_overlaytxt">Cras interdum accumsan diam</div>
                                </div>
                            </div>
                          </div>
  			       </div>
                    <div class="col-md-3 col-sm-8 templatemo_servicetxt">
                    	<h2>Responsive Design</h2>
                        <p>This is free CSS template fully compatible with many tablets and mobile devices. Mauris eget neque at sapien faucibus egestas vel vitae mi. Maecenas commodo augue risus, sed placerat neque feugiat vel.</p>
                    </div>
                    </div>
               </div>
            </div>
            <div class="clear"></div>
            <div class="moviecontainer templatemo_hexteam s_top">
            	<div class="row">
                	<div class="col-md-3 col-sm-4">
                        	 <div class="hexagon hexagonteam gallery-item">
                               <div class="hexagon-in1">
                                <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/team/3.jpg);">
                                <div class="overlay templatemo_overlay1">
                                	<a href="#fb">
                                   	 <div class="smallhexagon">
                                  	 	 <span class="fa fa-facebook"></span>
                                 	  </div>
                                    </a>
                                    <a href="#tw">
                                     <div class="smallhexagon">
                                       <span class="fa fa-twitter"></span>
                                    </div>
                                    </a>
                                    <a href="#ln">
                                     <div class="smallhexagon">
                                       <span class="fa fa-linkedin"></span>
                                    </div>
                                    </a>
                                    <a href="#rs">
                                     <div class="smallhexagon">
                                       <span class="fa fa-rss"></span>
                                    </div>
                                    </a>
                                </div>
                                
                                <div class="clear"></div>
                               	<div class="overlay templatemo_overlaytxt">Morbi pulvinar</div>
                                </div>
                            </div>
                          </div>
  			       </div>
                    <div class="col-md-3 col-sm-8 templatemo_servicetxt" >
                    	<h2>Mobile Ready</h2>
                        <p>Sed laoreet, enim quis euismod egestas, risus tortor tincidunt lacus, in iaculis mauris lectus at augue. Donec luctus nibh nec ullamcorper feugiat. Phasellus felis urna, lobortis vitae lacus sit amet, tristique consectetur nibh.</p>
                    </div>
                    <div class="templatemo_servicecol2">
                    <div class="col-md-3 col-sm-4">
                        	 <div class="hexagon hexagonteam gallery-item">
                               <div class="hexagon-in1">
                                <div class="hexagon-in2" style="background-image: url(${ctxPath}/resource/img/images2/team/4.jpg);">
                                <div class="overlay templatemo_overlay1">
                                	<a href="#fb">
                                   	 <div class="smallhexagon">
                                  	 	 <span class="fa fa-facebook"></span>
                                 	  </div>
                                    </a>
                                    <a href="#tw">
                                     <div class="smallhexagon">
                                       <span class="fa fa-twitter"></span>
                                    </div>
                                    </a>
                                    <a href="#ln">
                                     <div class="smallhexagon">
                                       <span class="fa fa-linkedin"></span>
                                    </div>
                                    </a>
                                    <a href="#rs">
                                     <div class="smallhexagon">
                                       <span class="fa fa-rss"></span>
                                    </div>
                                    </a>
                                </div>
                                
                                <div class="clear"></div>
                               	<div class="overlay templatemo_overlaytxt">Sed nonummy</div>
                                </div>
                            </div>
                          </div>
  			       </div>
                    <div class="col-md-3 col-sm-8 templatemo_servicetxt">
                    	<h2>HTML5 CSS3</h2>
                        <p>Phasellus sodales magna orci, id scelerisque lectus faucibus a. Vivamus varius tincidunt sem. Etiam ultricies orci sit amet sem egestas varius vitae at lacus. Nunc blandit elit in mauris semper, id iaculis felis condimentum.</p>
                    </div>
                    </div>
               </div>
            </div>
            
     </div>
     </div>
    <!--team end-->
    <div class="clear"></div>
    <!-- service start -->
    <div class="content services" id="menu-3">
    <div class="moviecontainer">
    	<div class="row templatemo_servicerow">
        	<div class="templatemo_hexservices col-sm-6">
            	<div class="blok text-center">
                  <div class="hexagon-a">
                     <a class="hlinktop" href="#">
                     	 <div class="hexa-a">
                         	<div class="hmoviecontainer-a">
                          <div class="vertical-align-a">
                            <span class="texts-a"><i class="fa fa-bell"></i></span>
                          </div>
                        </div>
                         </div>
                     </a>
                  </div>  
                     <div class="hexagonservices">
                     	<a class="hlinkbott" href="#">
                        <div class="hexa">
                      	  <div class="hmoviecontainer">
                          <div class="vertical-align">
                          <span class="texts"></span>
                          </div>
                        </div>
                      </div>
                        </a>
                     </div>
                     </div>
                     <div class="templatemo_servicetext">
                    <h3>Etiam vulputate</h3>
                    <p>Vestibulum diam lorem, aliquet et sagittis ac, facilisis nec massa. Suspendisse sagittis leo diam, sed dapibus eros vehicula eu. Aenean nulla magna, gravida at dui in, fringilla vestibulum massa.</p>
                    </div>
              </div>
              <div class="templatemo_hexservices col-sm-6">
            	<div class="blok text-center">
                  <div class="hexagon-a">
                     <a class="hlinktop" href="#">
                     	 <div class="hexa-a">
                         	<div class="hmoviecontainer-a">
                          <div class="vertical-align-a">
                            <span class="texts-a"><i class="fa fa-briefcase"></i></span>
                          </div>
                        </div>
                         </div>
                     </a>
                  </div>  
                     <div class="hexagonservices">
                     	<a class="hlinkbott" href="#">
                        <div class="hexa">
                      	  <div class="hmoviecontainer">
                          <div class="vertical-align">
                          <span class="texts"></span>
                          </div>
                        </div>
                      </div>
                        </a>
                     </div>
                     </div>
                     <div class="templatemo_servicetext">
                    <h3>Aliquam faucibus</h3>
                    <p>Vivamus a purus vel ante fermentum bibendum. Sed laoreet, enim quis euismod egestas, risus tortor tincidunt lacus, in iaculis mauris lectus at augue. Donec luctus nibh nec ullamcorper feugiat.</p>
                    </div>
              </div>
              <div class="templatemo_hexservices col-sm-6">
            	<div class="blok text-center">
                  <div class="hexagon-a">
                     <a class="hlinktop" href="#">
                     	 <div class="hexa-a">
                         	<div class="hmoviecontainer-a">
                          <div class="vertical-align-a">
                            <span class="texts-a"><i class="fa fa-mobile"></i></span>
                          </div>
                        </div>
                         </div>
                     </a>
                  </div>  
                     <div class="hexagonservices">
                     	<a class="hlinkbott" href="#">
                        <div class="hexa">
                      	  <div class="hmoviecontainer">
                          <div class="vertical-align">
                          <span class="texts"></span>
                          </div>
                        </div>
                      </div>
                        </a>
                     </div>
                     </div>
                     <div class="templatemo_servicetext">
                    <h3>Donec sagittis</h3>
                    <p>Phasellus sodales magna orci, id scelerisque lectus faucibus a. Vivamus varius tincidunt sem. Etiam ultricies orci sit amet sem egestas varius vitae at lacus. Nunc blandit elit in mauris semper, id iaculis felis condimentum.</p>
                    </div>
              </div>
              <div class="templatemo_hexservices col-sm-6">
            	<div class="blok text-center">
                  <div class="hexagon-a">
                     <a class="hlinktop" href="#">
                     	 <div class="hexa-a">
                         	<div class="hmoviecontainer-a">
                          <div class="vertical-align-a">
                            <span class="texts-a"><i class="fa fa-trophy"></i></span>
                          </div>
                        </div>
                         </div>
                     </a>
                  </div>  
                     <div class="hexagonservices">
                     	<a class="hlinkbott" href="#">
                        <div class="hexa">
                      	  <div class="hmoviecontainer">
                          <div class="vertical-align">
                          <span class="texts"></span>
                          </div>
                        </div>
                      </div>
                        </a>
                     </div>
                     </div>
                     <div class="templatemo_servicetext">
                    <h3>Integer tempus</h3>
                    <p>Maecenas porttitor erat et enim dapibus, sit amet accumsan velit tincidunt. Etiam sapien urna, suscipit ut purus ac, convallis pulvinar tellus. In eu neque purus. Donec cursus dictum pulvinar.</p>
                    </div>
              </div>
              <div class="templatemo_hexservices col-sm-6">
            	<div class="blok text-center">
                  <div class="hexagon-a">
                     <a class="hlinktop" href="#">
                     	 <div class="hexa-a">
                         	<div class="hmoviecontainer-a">
                          <div class="vertical-align-a">
                            <span class="texts-a"><i class="fa fa-thumb-tack"></i></span>
                          </div>
                        </div>
                         </div>
                     </a>
                  </div>  
                     <div class="hexagonservices">
                     	<a class="hlinkbott" href="#">
                        <div class="hexa">
                      	  <div class="hmoviecontainer">
                          <div class="vertical-align">
                          <span class="texts"></span>
                          </div>
                        </div>
                      </div>
                        </a>
                     </div>
                     </div>
                     <div class="templatemo_servicetext">
                    <h3>Aliquam pellentesque</h3>
                    <p>Nam auctor elementum dolor. Donec euismod, justo sed convallis blandit, ipsum erat mattis lectus, vel pharetra neque enim tristique risus. Ut consequat nisi vel justo. Curabitur in orci vel enim congue cursus.</p>
                    </div>
              </div>
              
        </div>
    </div>
    </div>
    <!-- service end -->
    <!-- contact start -->
    <div class="content contact" id="menu-5">
    <div class="moviecontainer">
     	<div class="row">
        	<div class="col-md-4 col-sm-12">
            	<div class="templatemo_contactmap">
    			<div id="templatemo_map"></div>
                <img src="${ctxPath}/resource/img/images2/templatemo_contactiframe.png" alt="contact map">
                </div>
                </div>
            <div class="col-md-3 col-sm-12 leftalign">
            	<div class="templatemo_contacttitle">Contact Information</div>
                <div class="clear"></div>
                <p>Integer eu neque sed mi fringilla pellentesque a eget leo. Duis ornare diam lorem, sit amet tempor mauris fringilla in. Etiam semper tempus augue, at vehicula metus. Nam vestibulum tortor nec congue ornare.</p>
                <div class="templatemo_address">
                	<ul>
                	<li class="left fa fa-map-marker"></li>
                    <li class="right">Nulla ut tellus, sit amet urna, <br>scelerisque pretium 10960</li>
                    <li class="clear"></li>
                    <li class="left fa fa-phone"></li>
                    <li class="right">010-020-0770</li>
                    <li class="clear"></li>
                    <li class="left fa fa-envelope"></li>
                    <li class="right">info@company.com</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-5 col-sm-12">
            	<form role="form">
              	<div class="templatemo_form">
                	<input name="fullname" type="text" class="form-control" id="fullname" placeholder="Your Name" maxlength="40">
              	</div>
              	<div class="templatemo_form">
                	<input name="email" type="text" class="form-control" id="email" placeholder="Your Email" maxlength="40">
              	</div>
               	<div class="templatemo_form">
                	<input name="subject" type="text" class="form-control" id="subject" placeholder="Subject" maxlength="40">
              	</div>
              	<div class="templatemo_form">
	            	<textarea name="message" rows="10" class="form-control" id="message" placeholder="Message"></textarea>
              	</div>
              	<div class="templatemo_form"><button type="button" class="btn btn-primary">Send Message</button></div>
            </form>
            </div>
        </div>
    	
    </div>
    </div>
    </div>
    <!-- contact end -->
	<!-- footer start -->
    <div class="templatemo_footer">
    	<div class="moviecontainer">
    	<div class="row">
        	<div class="col-md-9 col-sm-12">
            	<span>Copyright &copy; 2014 Company Name | Designed by <a href="http://www.templatemo.com" target="_parent">Template Mo</a></span>
            </div>
            <div class="col-md-3 col-sm-12 templatemo_rfooter">
            	  <a href="#">
                 	<div class="hex_footer">
					<span class="fa fa-facebook"></span>
					</div>
                  </a>
                  <a href="#">
                    <div class="hex_footer">
					 <span class="fa fa-twitter"></span>
					</div>
                    </a>
                  <a href="#">
                 	<div class="hex_footer">
					 <span class="fa fa-linkedin"></span>
					</div>
                 </a>
                <a href="#">
                	<div class="hex_footer">
					 <span class="fa fa-rss"></span>
					</div>
                </a>
            </div>
        </div>
        </div>
    </div>
    <!-- footer end -->    
	<script>
	$('.gallery_more').click(function(){
		var $this = $(this);
		$this.toggleClass('gallery_more');
		if($this.hasClass('gallery_more')){
			$this.text('Load More');			
		} else {
			$this.text('Load Less');
		}
	});
	$('.switch').click(function(){
		$('#menu-1').hide();
		$('#menu-2').show();
	});
    </script>
	<!-- templatemo 400 polygon -->
  </body>
</html>