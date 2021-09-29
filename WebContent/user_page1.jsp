<!DOCTYPE HTML>
<html>

<head>
<title>secure data deduplication</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="shortcut icon" type="image/x-icon"
	href="images/brainstorming_alternative.png" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<!-- modernizr enables HTML5 elements and feature detects -->
<script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
<script>
	function validation() {
		if (document.name.token.value == 0) {
			alert('Enter your token');
			document.name.token.focus();
			return false;
		}
	}
</script>

<style>
form, h1 {
	position: center;
	left: 350px;
}

#id {
	width: 200px;
	height: 25px;
	background-color: #D5D5D5;
}

#but {
	width: 60px;
	height: 25px;
}
</style>
</head>

<body>
	<%
		if (request.getParameter("no") != null) {
			out.println("<script>alert('your not having permission to do this...')</script>");
		}
		if (request.getParameter("status") != null) {
			out.println("<script>alert('Your request sent to private cloud')</script>");
		}
	%>
	<div id="main">
		<header>
			<div id="logo">
				<div id="logo_text">
					<!-- class="logo_colour", allows you to change the colour of the text -->
					<pre>  	<h1> <img height="75" width="75" src="./images/logo.png"> Secure Data Deduplication in Cloud </h1>
          			</pre>
				</div>
			</div>
			<nav>
				<ul class="sf-menu" id="nav">
					
					<li><a href="upload.jsp">Upload</a></li>
					<li><a href="download.jsp">Download</a></li>
					

					<li><a href="#"><img width="40" height="40"
							src="images/user.png" alt="photo_two" /></a>
						<ul>
							<li><a href="user.jsp">Logout</a></li>
							

						</ul></li>

				</ul>
			</nav>
		</header>
		<div id="site_content">

			<div id="content">
				<%
					HttpSession user = request.getSession();
					String uname = user.getAttribute("username").toString();
					String name = user.getAttribute("name").toString();
				%>
				<h1 align="center">
					Welcome ! <font style="color: tomato"> <%=name%></font>
				</h1>
				<div style="position: relative; left: 200px;">
					<img src="images/hybrid.png" width="500" height="400"></img>
				</div>


			</div>
		</div>
		<footer>
			<p></p>
		</footer>
	</div>
	<p>&nbsp;</p>
	<!-- javascript at the bottom for fast page loading -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
	<script type="text/javascript" src="js/jquery.sooperfish.js"></script>
	<script type="text/javascript" src="js/image_fade.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('ul.sf-menu').sooperfish();
		});
	</script>
</body>
</html>
