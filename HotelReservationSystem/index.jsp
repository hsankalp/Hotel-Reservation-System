<!doctype html>

<!-- INDEX -->
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Hotel Cloudgate - Welcome!!</title>
	<link rel="stylesheet" href="CloudGate.css" type="text/css" />
	<script type="text/javascript" src="javascript.js"></script>
</head>

<body onload="init()">
<div id="container" >
    <header>
	<div align="right" >
	<a href="login.jsp" >Login</a>
	
	<a href="adminlogin.jsp">Admin Login</a><br>
    </div>
	<img src="images/Cloudgate1.jpg" alt="" style="width:70px;height:70px;">
	<form name="autofillform" action="autocomplete">
      <table border="0" cellpadding="5"> 
        <tbody>
          <tr>
			<td align= "center" >
                <input type="text" size="140" placeholder="Search..."  id="complete-field" onkeyup="doCompletion()">
             </td>
          </tr>
          <tr>
              <td id="auto-row" colspan="2">
                <table id="complete-table" class="popupBox" />
              </td>
          </tr>
        </tbody>
      </table>
    </form>
    </header>
    <nav>
    	<ul>
        	<li class="start selected"><a href="index.jsp">Overview</a></li>
			<li class=""><a href="Rooms.jsp">Rooms</a></li>
            <li class=""><a href="Suites.jsp">Suites</a></li>	
            <li class=""><a href="Facilities.jsp">Leisure Facilities</a></li>
            <li class=""><a href="Dining.jsp">Dining</a></li>
			
			<li class=""><a href="Reviews.jsp">Write Review</a></li>
			<li class=""><a href="ViewReviews">Guest Reviews</a></li>
			


			
        </ul>
    </nav>
	
    <div id="body">		

	<section id="content">

	    
		<article >
		<img src="images/Cloudgate2.jpg" alt="" style="width:1100px;height:450px;">
		<br><h3>Overview</h3><br>
          <p>At the Cloud Gate hotel, we bring you much more than just the lodging facility. The picturesque view from the rooms, fancy dip in our pools, pampering in our Spa. We give you the break you deserve
		  We are devoted to make everyone feel like a cherished guest</p>	
		   <p> Our warm inviting decor and thoughtful staff will soon have you calling this hotel your "home" away from home! Our hotel offers unparalleled service and easy access to everything the City has to offer.
			Take advantage of recreation opportunities such as a fitness center, or other amenities including wireless Internet access </p>
			<p>Take a look through our image gallery and hotel services pages for a real taste of what a stay at the Cloud Gate can offer</p>
		</article>
    </section>
        
    <aside class="sidebar">
	
            <ul>	
               			<li><a href="index.jsp">Overview</a><br></li>
						<li><a href="Location.jsp">Hotel Location</a><br></li>
						<li><a href="Facilities.jsp">Leisure Facilities</a><br></li>
						<li><a href="Services.jsp">Hotel Services</a><br></li>
						<li><a href="Local.jsp">Local Information</a><br></li>
						<li><a href="Gallery.jsp">Gallery</a><br></li>
			  
            </ul>
		
    </aside>
    
	<div class="clear"></div>
	</div>
    
	<footer>
	
        <div class="footer-content">
           <p>Cloud Gate, #333 N Dearborn St, Chicago IL-60654</p>
        <div class="clear"></div>
        </div>
		
        <div class="footer-bottom">
            <p>Copyrights@ Sankalp, Kavya, Prithvee, Chaithanya, Atul</p>
        </div>
		
    </footer>
</div>

</body>

</html>