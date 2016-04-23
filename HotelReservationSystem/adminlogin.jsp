<!doctype html>

<!-- INDEX -->
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Hotel Cloudgate - Welcome!!</title>
	<link rel="stylesheet" href="CloudGate.css" type="text/css" />
</head>

<body >
<div id="container" >
    <header>
	<div align="right" >
	<a href="login.jsp">Login</a>
	
	<a>Admin Login</a><br>
    </div>
	<img src="images/Cloudgate1.jpg" alt="" style="width:70px;height:70px;">
    </header>
    <nav>
    	<ul>
        	<li class=""><a href="index.jsp">Overview</a></li>
			
			<li class=""><a href="ViewReviews">Guest Reviews</a></li>
			


			
        </ul>
    </nav>

    <div id="body">		

	<section id="content">
	
		<center>
			<form method="post" action="AdminPage">
			<br><br>
			<h4>Enter your Admin ID and Password to Login</h4>
			<table cellpadding='2' cellspacing='1'>
				<tr>
					<td>Admin ID</td>
					<td><input type="TEXT" size="15" name="userid"></input></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="PASSWORD" size="15" name="password"/></td>
				</tr>
				<tr>
					<td colspan='2'>
					<center><input type="submit" value="Login" /></center>
				</td>
				</tr>
				
			</table>
			</form>
		</center>
	    
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