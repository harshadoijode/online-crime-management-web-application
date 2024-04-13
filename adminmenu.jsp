<!DOCTYPE html>
<html>
<head>
<style>
.btn {
    border: none;
    color: white;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
}

.success {background-color: #4CAF50;} /* Green */
.success:hover {background-color: #46a049;}

.info {background-color: #2196F3;} /* Blue */
.info:hover {background: #0b7dda;}

.warning {background-color: #ff9800;} /* Orange */
.warning:hover {background: #e68a00;}

.danger {background-color: #f44336;} /* Red */ 
.danger:hover {background: #da190b;}

.default {background-color: #e7e7e7; color: black;} /* Gray */ 
.default:hover {background: #ddd;}
body {
	background-color: #000099;
}
.style1 {
	color: #FF0000;
	font-weight: bold;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
<body>



<a href="display.html"  target="mainFrame"><button class="btn success">Home</button></a>
<a href="addOficer.jsp" target="mainFrame">
<button class="btn info">Add Officer </button>
</a>
<a href="editofficer.jsp" target="mainFrame">
<button class="btn warning">Edit officers </button>
</a>
<a href="addvictim.jsp" target="mainFrame">
<button class="btn info">Add Victim </button>
</a>
<a href="searchvictim.jsp" target="mainFrame" >
<button class="btn danger">Search Victim </button>
</a>
<a href="editvictim.jsp" target="mainFrame">
<button class="btn default">Edit Victims details </button>
</a>
<a href="showlogs.jsp" target="mainFrame">
<button class="btn warning">Show Logs </button>
</a>
<a href="AdminLogin.html" class="style1" target="_parent">logout</a>
</body>
</html>
