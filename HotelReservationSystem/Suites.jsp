<!doctype html>

<!-- INDEX -->
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Hotel Cloudgate - Welcome!!</title>
	<link rel="stylesheet" href="CloudGate.css" type="text/css" />
<script type="text/javascript" src="javascript.js"></script>	
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script>
  $(function() {
    $( "#from" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 2,
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#to" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 2,
      onClose: function( selectedDate ) {
        $( "#from" ).datepicker( "option", "maxDate", selectedDate );
      }
    });
  });
  </script>	
	
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
        	<li class=""><a href="index.jsp">Overview</a></li>
			<li class=""><a href="Rooms.jsp">Rooms</a></li>
            <li class="start selected"><a href="Suites.jsp">Suites</a></li>
            <li class=""><a href="Facilities.jsp">Leisure Facilities</a></li>
            <li class=""><a href="Dining.jsp">Dining</a></li>
			
			<li class=""><a href="Reviews.jsp">Write Review</a></li>
			<li class=""><a href="ViewReviews">Guest Reviews</a></li>
			


			
        </ul>
    </nav>

    <div id="body">		

	<section id="content">

	    <article>

			<h3>Suites</h3>
			
            <p>Experience beautiful contemporary décor perfectly complemented by breathtaking views in one of our spacious suites.

Whether our Executive Suite appeals with its walk-in closet and separate living room and dining area, or you’re tempted by a private Jacuzzi, find out more about Cloud Gate’s range of suites by selecting from the list.

For the ultimate luxury, make the most of your trip by taking the three-bedroomed Imperial Suite with its dining room and fireplace, two bathrooms.</p>
            <p><b>Check for the Suites Availability below:<b></p>
           <form action="CheckAvailability.jsp">
		   <table><tr><td>
						 Room Type:<select name="roomType">
                                        <option value="Executive" selected>Executive</option>
                                        <option value="Presidential">Presidential</option>
                                        <option value="Royal">Royal</option>
                                        <option value="Imperial">Imperial</option>
					</td>
					<td>
						<label for="from">From</label>
						<input type="text" id="from" name="from">
						<label for="to">to</label>
						<input type="text" id="to" name="to">
						<input type="submit" value="Check Availability"/>
						</td></tr></table>
					</form> 

		</article>
	
		<article class="expanded">

            					
            <table>
			<tr>
				
				<td>
					<p><b> Executive Suite </b></p><br>
					<p> Our Executive Suites offer guests an area of over 100 sq m, providing luxurious and comfortable surroundings. All Executive Suites offer the right combination of amenities – including Wi-Fi connections as standard - to allow you to work or rest to your own schedule.</p>
					<br><br><p>Price: $1300</p>
					
					
				</td>
				<td>
				<p><img src="images/executive.jpg" alt="" style="width:250px;height:250px;"></p>
    				
					<form class = "submit-button" method = "get" action = "BookNow1.jsp">
						<input type = "hidden" name = "rType" value = "Executive">
						<input type = "hidden" name = "price" value = "1300">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Book Now">
					</form>
				</td>
				
			</tr>
			
			
			<tr>
				
				<td>
					<p><b> Presidential Suite </b></p><br>
					<p> Presidential Suite offers you your own personal sanctuary inside this vast five-star hotel. With working area, kitchenette, terrace, lounge area and king-size bed, it functions as a space to relax in or a space to work in – just as you want it to.</p>
					<br><br><p>Price: $1500</p>
					
				</td>
				<td>
				<p><img src="images/presidential.jpg" alt="" style="width:250px;height:250px;"></p>
    				
					<form class = "submit-button" method = "get" action = "BookNow1.jsp">
						<input type = "hidden" name = "rType" value = "Presidential">
						<input type = "hidden" name = "price" value = "1500">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Book Now">
					</form>
				</td>
				
			</tr>
			<tr>
				
				<td>
					<p><b> Royal Suite </b></p><br>
					<p> While the suite comes with a double lounge bed, separate lounge area, kitchenette and all the as-standard Cloud Gate amenities, it’s the little touches truly make this suite special. Relax by the glimmering flame of the fireplace, immerse yourself in a film courtesy of the flat-screen TV with surround sound, and take advantage of the spacious ‘his & hers’ closets.</p>
					<br><br><p>Price: $1700</p>
					
				</td>
				<td>
				<p><img src="images/royal.jpg" alt="" style="width:250px;height:250px;"></p>
    				
					<form class = "submit-button" method = "get" action = "BookNow1.jsp">
						<input type = "hidden" name = "rType" value = "Royal">
						<input type = "hidden" name = "price" value = "1700">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Book Now">
					</form>
				</td>
				
			</tr>
			<tr>
				
				<td>
					<p><b> Imperial Suite </b></p><br>
					<p> The Imperial Suite combines our Presidential Suite with the Royal Suite, along with an additional Premier Room – the result is the height of luxury with three bedrooms and over 650 sq m of space. Your Imperial Suite will include a dining room with fireplace, kitchenette, spacious lounge and working areas, powder room and a vast 60 sq m upper terrace, featuring its own ‘sky lounge’. The Imperial Suite fulfils your every need for a truly spectacular Chicago experience.</p>
					<br><br><p>Price: $2000</p>
				
				</td>
				<td>
				<p><img src="images/imperial.jpg" alt="" style="width:250px;height:250px;"></p>
    				
					<form class = "submit-button" method = "get" action = "BookNow1.jsp">
						<input type = "hidden" name = "rType" value = "Imperial">
						<input type = "hidden" name = "price" value = "2000">
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