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
			
			<li class="start selected"><a href="Reviews.jsp">Write Review</a></li>
			<li class=""><a href="ViewReviews">Guest Reviews</a></li>


			
        </ul>
    </nav>

    <div id="body">		

	<section id="content">

                <article>

                    <h3> Give us your Feedback:</h3>

                    <form method="post" class="searchform" action="SubmitReviews">

                        <table>

                            <tr>
                                <td> Category: </td>
                                <td>
                                    <select name="category">
                                        <option value="Rooms" selected>Rooms</option>
                                        <option value="Suites">Suites</option>
                                        <option value="Facilities">Facilities</option>
										<option value="Service">Service</option>
                                </td>
                            </tr>
							
							<tr>
                                <td> Checkin Date: </td>
                                <td>
                                    <input type="date" name="stayDate" size=10/> </td>
                            </tr>

                            <tr>
                                <td> User ID: </td>
                                <td>
                                    <input type="text" name="userID" class="s" /> </td>
                            </tr>

                            <tr>
                                <td> User Age: </td>
                                <td>
                                    <input type="number" name="userAge" class="s" /> </td>
                            </tr>

                            <tr>
                                <td> User Gender: </td>
                                <td>
                                    <input type="radio" name="userGender" value="Male" /> Male
                                    <input type="radio" name="userGender" value="Female" /> Female</td>
                            </tr>

                            <tr>
                                <td> Review Rating: </td>
                                <td>
                                    <select name="reviewRating">
                                        <option value="1" selected>1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                </td>
                            </tr>

                            <tr>
                                <td> Review Date: </td>
                                <td>
                                    <input type="date" name="reviewDate" size=10/> </td>
                            </tr>

                            <tr>
                                <td> Feedback: </td>
                                <td>
                                    <textarea name="reviewText" rows="4" cols="50"> </textarea>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <input type="submit" value="Submit Review" class="formbutton" /> </td>
                                <td></td>
                            </tr>

                        </table>
                    </form>

                </article>

            </section>
        
    <aside class="sidebar">
	
            <ul>	
               			<li><a href="index.jsp">Overview</a><br></li>
						<li><a href="Location.jsp">Hotel Location</a><br></li>
						<li><a href="Leisure.jsp">Leisure Facilities</a><br></li>
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