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
            <li class=""><a href="Facilities.jsp">Leisure Facilities</a></li>
            <li class=""><a href="Dining.jsp">Dining</a></li>
			
			<li class=""><a href="Reviews.jsp">Write Review</a></li>
			<li class=""><a href="ViewReviews.jsp">Guest Reviews</a></li>
			


			
        </ul>
    </nav>

    <div id="body">		

	<section id="content">

	    <article>

			<h3>Taste at our finest Restaurants</h3>
			
            <p>An open kitchen and wine room reinforce the fact that Acadia is first and foremost dedicated to quality food and wine with attention to detail paid to both. 
			A la carte and tasting menus are available, featuring McCaskey’s contemporary take on Classic American cuisine. 
			Attentive service, contemporary classic cocktails, and a global wine list round out the offerings.</p>
            

		</article>
	
		<article class="expanded">

           <table>
			<tr>
				<form class = "submit-button" method = "get" action = "BookMeal.jsp">
					
				<td>
				<p><img src="images/heritage.jpg" alt="" style="width:250px;height:250px;"></p>
    			</td>	
				<td>
					<p>Lunch Buffet : $55 </p>
					<p>Dinner Buffet : $65 </p>
					<p>
						Persons Count: <input type="number" name="mCount" class="s" ></input>  
					</p>
					<p>
						Days: <input type="number" name="mDays" class="s" ></input>
					</p>
					<p>
						<input type = "hidden" name = "rType" value = "Heritage">
						<input type = "hidden" name = "mPrice" value = "140">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Reserve">
					</p>
					
				</td></td><td></td><td></td>
				
				<td>
					<p><img src="images/heritage1.jpg" alt="" style="width:250px;height:250px;"></p>
    			
				</td>
				</form>
				
			</tr>
			
			
			<tr>
				<form class = "submit-button" method = "get" action = "BookMeal.jsp">
					
				<td>
				<p><img src="images/la.jpg" alt="" style="width:250px;height:250px;"></p>
    			</td>	
				<td>
					
					<p>Lunch Buffet : $65 </p>
					<p>Dinner Buffet : $75 </p>
					 
					<p>
						Persons Count: <input type="number" name="mCount" class="s" /> 
					</p>
					<p>
						Days: <input type="number" name="mDays" class="s" /> 
					</p>
					
					<p>
						<input type = "hidden" name = "rType" value = "La Cuisine">
						<input type = "hidden" name = "mPrice" value = "140">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Reserve">
					</p>
				
				</td><td></td><td></td>
				<td>
				<p><img src="images/la1.jpg" alt="" style="width:250px;height:250px;"></p>
    				
				</td>
				</form>
					
			</tr>
			<tr>
			<form class = "submit-button" method = "get" action = "BookMeal.jsp">
					
				<td>
				<p><img src="images/joe.jpg" alt="" style="width:250px;height:250px;"></p>
    			</td>	
				<td>
					
					<p>Lunch Buffet : $75 </p>
					<p>Dinner Buffet : $85 </p>
					<p>
						Persons Count: <input type="number" name="mCount" class="s" /> 
					</p>
					<p>
						Days: <input type="number" name="mDays" class="s" /> 
					</p>
					
					<p>
						<input type = "hidden" name = "rType" value = "Joela's">
						<input type = "hidden" name = "mPrice" value = "140">
						<input class = "submit-button" type = "submit" name = "Superior" value = "Reserve">
					</p>
				
				</td></td><td></td><td></td>
				
				<td>
					<p><img src="images/joe1.jpg" alt="" style="width:250px;height:250px;"></p>
    			
				</td>
				</form>
					
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