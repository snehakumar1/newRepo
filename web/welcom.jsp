<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags"%><!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">



<title>Welcome</title>



<link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/cover/">



<!-- Bootstrap core CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet">



<!-- Custom styles for this template -->
<link href="./css/cover.css" rel="stylesheet">



<script>
function dropdownFunction() {
document.getElementById("myDropdown").classList.toggle("show");
}



// Close the dropdown menu if the user clicks outside of it
window.onclick = function (event) {
if (!event.target.matches('.dropbtn')) {
var dropdowns = document.getElementsByClassName("dropdown-content");
var i;
for (i = 0; i < dropdowns.length; i++) {
var openDropdown = dropdowns[i];
if (openDropdown.classList.contains('show')) {
openDropdown.classList.remove('show');
}
}
}
}
</script>
</head>



<body class="text-center bg">




<div class="cover-container d-flex h-100 p-3 mx-auto flex-column">
<header class="masthead mb-auto">
<div class="inner">
<h3 class="masthead-brand">Ticketing System</h3>
<nav class="nav nav-masthead justify-content-center">
<div class="dropdown">
<button onclick="dropdownFunction()" class="dropbtn nav-link active">Login</button>
<div id="myDropdown" class="dropdown-content">
<a href="adminLogin.jsp">Admin</a>
<a href="csrLogin.jsp">CSR</a>
<a href="techLogin.jsp">Technician</a>
</div>
</div>



<a class="nav-link" href="#">Contact</a>
</nav>
</div>
</header>



<main role="main" class="inner cover">
<h1 class="cover-heading">We're there to help</h1>
<p class="lead">Specifically designed to provide assistance when it is needed. With our</p>
<p class="lead">highly trained and dedicated agents, you can be assured solutions are only a phone call or email away </p>
<hr style="color: transparent">
<!-- <form action="trackuserdetails" method="post">
<td>
<form action="" method="post">
<p class="lead">
<input type="text" name="Tracking ID" value="" style="border:2px">
<button type="submit" class="btn btn-lg btn-secondary">Track</button>
</p>
</form>
</td>
</form> -->
<center>
<s:form action="trackuserdetails" method="post">

<s:textfield label="Issue Id" name="issueId"/>
<s:submit name="submitType" value="show" type="submit"/>

</s:form>
<s:if test="true">



<s:iterator value="usdList">
<br>
<br>
<table>
<thead>
<tr style="background-color: #084298">
<th>Issue Id &nbsp; &nbsp;</th>
<th>Service Date &nbsp; &nbsp;</th>
<th>Service Description &nbsp; &nbsp;</th>
<th>Ticket Status &nbsp; &nbsp;</th>



</tr>
</thead>
<tr>
<td><s:property value="issueId" /></td>
<td><s:property value="serviceDate" /></td>
<td><s:property value="serviceDescription" /></td>
<td><s:property value="ticketStatus" /></td>





</tr>
</table>
</s:iterator>



</s:if>
<s:else>
<div style="color: red;">No Data Found.</div>
</s:else>
</center>
</main>



<footer class="mastfoot mt-auto">
<div class="inner">
<!--<p>Cover template for <a href="https://getbootstrap.com/">Bootstrap, by <a href="https://twitter.com/mdo">@mdo
</div>
</footer>
</div>




<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="../../assets/js/vendor/popper.min.js"></script>
<script src="../../dist/js/bootstrap.min.js"></script>
</body>