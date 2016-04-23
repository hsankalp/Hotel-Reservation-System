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
			<li class="start selected"><a href="Rooms.jsp">Rooms</a></li>
            <li class=""><a href="Suites.jsp">Suites</a></li>
            <li class=""><a href="Facilities.jsp">Leisure Facilities</a></li>
            <li class=""><a href="Dining.jsp">Dining</a></li>
			
			<li class=""><a href="Reviews.jsp">Write Review</a></li>
			<li class=""><a href="ViewReviews">Guest Reviews</a></li>
			


			
        </ul>
    </nav>

    <div id="body">		

	<section id="content">

	    <article>

		
			<h3>Rooms</h3>
			
            <p>Our sophisticated and comfortable rooms are ready to welcome you with contemporary decor, stunning views over our award-winning gardens, and all the amenities you will need for a truly enjoyable stay. From your own private balcony - perfect for making the most of the hotel’s fantastic location - to a flat-screen TV, laptop-sized safe and handy working desk, our rooms are fully-equipped to ensure your time at the Cloud Gate is as enjoyable as possible.</p>	
            <p><b>Check for the Room Availability below:<b></p>
           <form action="CheckAvailability.jsp">
		   <table><tr><td>
						 Room Type:<select name="roomType">
                                        <option value="Superior" selected>Superior</option>
                                        <option value="Deluxe">Deluxe</option>
                                        <option value="Premier">Premier</option>
                                        <option value="Premier Plus">Premier Plus</option>
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
					<p><b> Superior Room </b></p><br>
					
					<p> Enjoy up to 45 sq m of comfort in one of our Superior Rooms. Relax in the marble bathroom - featuring a separate shower booth and bath tub - and enjoy the highest Kempinski standards for hospitality and range of branded amenities. All our Superior Rooms come with a terrace and outdoor furniture.  </p>
					<br><br><p>Price: $500</p>
					
				
				</td>
				<td>
					
					<p><img src="images/superior.jpg" alt="" style="width:250px;height:250px;"></p>
    				
					<form class = "submit-button" method = "get" action = "BookNow1.jsp">
						<input type = "hidden" name = "rType" value = "Superior">
						<input type = "hidden" name = "price" value = "500">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Book Now">
					</form>
				</td>
				
			</tr>
			
			<tr>
				
				<td>
					<p><b> Deluxe Room </b></p><br>
					<p> Our Deluxe Rooms are perfectly suited to guests who value comfort and tranquillity as well as high standards of hospitality. Providing up to 45 sq m of beautifully-decorated space and offering all the branded amenities you’ll need for a comfortable stay, all our Deluxe Rooms face inward towards our award-winning tropical gardens. Choose the Deluxe Room to enjoy a marble bathroom featuring a separate shower booth and bath tub. </p>
					<br><br><p>Price: $700</p>
					
					
				</td>
				<td>
				<p><img src="images/deluxe.jpg" alt="" style="width:250px;height:250px;"></p>
    				
					<form class = "submit-button" method = "get" action = "BookNow1.jsp">
						<input type = "hidden" name = "rType" value = "Deluxe">
						<input type = "hidden" name = "price" value = "700">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Book Now">
					</form>
				</td>
				
			</tr>
		
			<tr>
				
				<td>
					<p><b> Premier Room </b></p><br>
					<p> Our Premier Rooms are the perfect choice for those looking for luxury. Offering beautiful lake views and terraces with their own seating areas, our Premier Rooms provide up to 45 sq m of contemporary comfort. Enjoy top standards of hospitality, with branded amenities and a stylish marble bathroom with separate shower booth and bath tub. </p>
					<br><br><p>Price: $900</p>
					
					
					
				</td>
				<td>
				<p><img src="images/premier.jpg" alt="" style="width:250px;height:250px;"></p>
    				
					<form class = "submit-button" method = "get" action = "BookNow1.jsp">
						<input type = "hidden" name = "rType" value = "Premier">
						<input type = "hidden" name = "price" value = "900">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Book Now">
					</form>
				</td>
				
			</tr>
			<tr>
				
				<td>
					<p><b> Premier Plus Room </b></p><br>
					<p> Our Premier Plus Rooms are the most luxurious of all the rooms we offer. Benefitting from a privileged location within the hotel, Premier Plus Rooms provide an unparalleled view of the entire Chicago Skyline. Enjoy top standards of hospitality and all the branded amenities you'll need during your stay, as well as beautiful décor including a marble bathroom with a separate shower booth and bathtub. For contemporary style and a lake view you won't forget, book our Premier Plus Room today.</p>
					<br><br><p>Price: $1100</p>
					
					
				</td>
				<td>
				<p><img src="images/premier+.jpg" alt="" style="width:250px;height:250px;"></p>
    				
					<form class = "submit-button" method = "get" action = "BookNow1.jsp">
						<input type = "hidden" name = "rType" value = "Premier Plus">
						<input type = "hidden" name = "price" value = "1100">
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