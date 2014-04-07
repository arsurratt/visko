<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
 <head>
    <title>Visko - Query Parameters</title>

    <%@ include file="../includePage/header.jsp" %>

        <!-- Bootstrap core CSS -->
    <link href="/visko-web/Main/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/visko-web/Main/assets/css/sideBar.css" rel="stylesheet">
  </head>

  <body>
	<%@ page import="edu.utep.trustlab.visko.web.html.*" %>
	<% SelectionOptionsHTML o = new SelectionOptionsHTML(); %>


<!--  -->
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
	    <li><a href="/visko-web/Main/Home">Home</a></li>
	    <li><a href="#">Search History</a></li>
	    <li class="active"><a href="Visualize.jsp">Visualize</a></li>
	    <li><a href="#">Manage Services</a></li>
	    <li><a href="#">Configure Account</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href=""></a></li>
          </ul>
        </div>
        <div class="col-md-10 col-md-offset-2">
	  <div class="container">
	    <div class="row">
              <!--  ENTER CODE BELOW  -->	
<%@ page import="java.util.*" %>
<% String abstractionType = (String) request.getSession().getAttribute("AbstractionType");%>
<h3>Set Query Parameters</h3>
<ul class="list-inline">
  <li><img src="/visko-web/Main/assets/img/<% out.write(abstractionType); %>.png" class="img-responsive" alt="Responsive image" width="200" height="200"></li>
  <li><p> <% out.write(abstractionType); %> -  Description text corresponding to selected visual abstraction from previous page</p></li>
</ul>

<br>
<hr>
<br>

<form action="../ViskoServletManager">
	<input type="hidden" name="requestType" value="new-build-query" />
	<input type="hidden" name="abstractionType" value="<%=abstractionType%>" />
	<ul class="list-inline">
	  <li>
	    <select class="form-control" name="viewerSet" style="width: 500px"><%=o.getViewerSets()%>
		</select>
	  </li>
	  <li><p><b>Viewer Sets</b>  refer to programs that present the abstractions...</p></li>
	<br>
	  <li>
	    <select class="form-control" name="inputUrlFormat" style="width: 500px"><%=o.getFormats()%></select>  
	  </li>
	  <li><p><b>Input Data Format</b>  refers to the file encoding of the input data set...</p></li>
	<br>
	  <li>
	    <select class="form-control" name=inputUrlType style="width: 500px"><%=o.getTypes()%></select> 
	  </li>
	  <li><p><b>Input Data Type</b> refers to the data structure represented by...</p></li>
	<br>
	  <li>
	    <input class="form-control" name="inputUrl" type="text" style="width: 500px">
	  </li>
	  <li><p><b>Input Data URL</b>  refers to the location of the data to be visualized...</p></li>
	</ul>
	<td><input type="submit" id="submitButton" style="width: 156px"></td>
</form>

	<!--  ENTER CODE ABOVE  -->	
            </div>
    	  </div>      
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="/visko-web/Main/assets/js/bootstrap.min.js"></script>
    <script src="/visko-web/Main/assets/js/docs.min.js"></script>
  </body>
</html>
