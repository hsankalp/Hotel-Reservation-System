<!doctype html>

<!-- INDEX -->
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Hotel Cloudgate - Welcome!!</title>
	<link rel="stylesheet" href="CloudGate.css" type="text/css" />
	<script type="text/javascript" src="javascript.js"></script>
</head>

<body onload="init()" >
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
        	<li class=""><a href="index.jsp">Overview</a></li>
			<li class=""><a href="Rooms.jsp">Rooms</a></li>
            <li class=""><a href="Suites.jsp">Suites</a></li>
            <li class="start selected"><a href="Facilities.jsp">Leisure Facilities</a></li>
            <li class=""><a href="Dining.jsp">Dining</a></li>
			
			<li class=""><a href="Reviews.jsp">Write Review</a></li>
			<li class=""><a href="ViewReviews">Guest Reviews</a></li>
			


			
        </ul>
    </nav>

    <div id="body">		

	<section id="content">

	    <article>

			<h3>Leisure Facilities</h3>
			
            <p>Explore all the "Windy City" is famous for from our downtown Chicago hotel near the Illinois Center and Magnificent Mile. 
			Discover exciting entertainment, legendary museums, and exciting Downtown Chicago activities just minutes from our door step. 
			Delight in shopping on the Magnificent Mile, and explore famed Chicago attractions like Navy Pier, Grant Park, and Buckingham Fountain. 
			Catch the Cubs, Bears, Blackhawks, Bulls, Fire or White Sox in action on their home turf.</p>
            

		</article>
	
		<article class="expanded">

           <table>
			<tr>
				
				<td>
				<p><b> Indian Style Spa </b></p>
				<p><img src="images/spa.jpg" alt="" style="width:250px;height:250px;"></p>
    			</td>	
				<td>
					
					<p>Kaya Kalp - A Sanskrit word meaning Rejuvenation of mind, body and souls.

						India's culture lies at the heart of the Chicago... 
						Journey through this majestic land of ancient customs and rituals, and 
						recapture the spiritual and medicinal legacies that have been handed down through the centuries.</p>
					<br><br><p>Price: $700</p>
				</td>
				<td>
					<form class = "submit-button" method = "get" action = "BookFacility.jsp">
						<input type = "hidden" name = "fType" value = "Spa">
						<input type = "hidden" name = "price" value = "700">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Book Now">
					</form>
				</td>
				
			</tr>
			
			
			<tr>
				
				<td>
				<p><b> Fitness Centre </b></p>
				<p><img src="images/gym.jpg" alt="" style="width:250px;height:250px;"></p>
    			</td>	
				
				<td>
					<p> We know how important exercise is to your overall well-being. 
					That’s why our Chicago, Illinois luxury hotel near Magnificent Mile offers our 24/7 Fitness. 
					Our fitness facility features the latest in Life Fitness® Cardio equipment complete with your own personal integrated LCD television. 
					Headsets are available from the Fitness Center Concierge.

					Our fitness center is located on the West Tower, Blue Level, open 24 hours a day, and boasts exceptional views of the river 
					and Michigan Avenue. </p>
					
					<br><br><p>Price: $500</p>
				</td>
				<td>
					<form class = "submit-button" method = "get" action = "BookFacility.jsp">
						<input type = "hidden" name = "fType" value = "Fitness">
						<input type = "hidden" name = "price" value = "500">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Book Now">
					</form>
				</td>
				
			</tr>
			<tr>
				<td>
				<p><b> Sauna </b></p>
				<p><img src="images/sauna.jpg" alt="" style="width:250px;height:250px;"></p>
    			</td>	
				
				<td>
					<p> Classical massage, provided with the highest quality remedies, 	
						will not only help you unload your daily tension, but will also have a therapeutic and soothing effect on your body and mind.
						Two saunas welcome up to 20 people at the same time, 
						whereas our refreshing pool water easily relieves the fatigue and weariness of your muscles.</p>
					<br><br><p>Price: $600</p>
				</td>
				<td>
					<form class = "submit-button" method = "get" action = "BookFacility.jsp">
						<input type = "hidden" name = "fType" value = "Sauna">
						<input type = "hidden" name = "price" value = "600">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Book Now">
					</form>
				</td>
				
			</tr>
			
			<tr>
				<td>
				<p><b> CG Kids Club </b></p>
				<p><img src="images/kids.jpg" alt="" style="width:250px;height:250px;"></p>
    			</td>	
				
				<td>
					<p> Kids are expertly looked after at the Kids Club, with all day entertainment and attractive programmes. 

						The Kids Club is specially tailored for kids between 4 and 12 years of age and is provided with less charge. 
						Enjoy friendly service, colorful toys and interesting facilities for kids that will make your kids' 
						stay full of happiness and laughter.</p>
					<br><br><p>Price: $120</p>
				</td>
				<td>
					<form class = "submit-button" method = "get" action = "BookFacility.jsp">
						<input type = "hidden" name = "fType" value = "Kids">
						<input type = "hidden" name = "price" value = "120">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Book Now">
					</form>
				</td>
				
			</tr>
			</table>
			
           
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
           <p>Name and Address</p>
        <div class="clear"></div>
        </div>
		
        <div class="footer-bottom">
            <p>Copyrights@ Sankalp, Kavya, Prithvee, Chaithanya, Atul</p>
        </div>
		
    </footer>
</div>

</body>

</html>