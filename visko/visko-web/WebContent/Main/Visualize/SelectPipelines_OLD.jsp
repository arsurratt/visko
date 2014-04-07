<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <title>Visko - Pipelines</title>

    <%@ include file="../includePage/header.jsp" %>

        <!-- Bootstrap core CSS -->
    <link href="/visko-web/Main/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/visko-web/Main/assets/css/sideBar.css" rel="stylesheet">
  </head>

  <body>

<!--  -->
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
	    <li><a href="/visko-web/Main/Home/">Home</a></li>
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
<h3>Select Pipeline</h3>

<%@page import="java.util.*" %>
<%	
    String test = (String) request.getAttribute( "TEST" );
	String re = (String) request.getSession().getAttribute("re");
    //out.println("TEST: " + test);
    //out.println("Redirect: " + re);
    
    TreeMap<String, ArrayList<String>> pipeLines= (TreeMap<String, ArrayList<String>>) request.getSession().getAttribute("resultMap");
    
    //out.println("<br>Tree Size: " + pipeLines.size() + "<br>");
 	// Use iterator to display the keys and associated values
 	   
	Set<String> keys = pipeLines.keySet();
 	
 	//out.println("Key Size: " + keys.size() );
 	
 	
 	//Arraylist<Strings> are built with this format
 	// runLink + "|" + runProvLink + "|" + configure + "|" + abstraction + "|" + format + "|" + description;
 	// all seperated by the | 
 	
 	
 	
 	
 	Iterator<String> it = keys.iterator();
 	
 	out.write("<div class=\"panel-group\" id=\"accordion\">");
 	while( it.hasNext() )
 	{
 		String key = it.next();
 		ArrayList<String> value = pipeLines.get(key);
 		
 		out.write("<div class=\"panel panel-default\">" +
	    		  	"<div class=\"panel-heading\">" +
	      		  	"<h4 data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#" +key +"\" class=\"panel-title\">");	
		out.write(key);
		out.write("</h4>" +
			    	"</div>" +
			    	"<div id=\""+ key +"\" class=\"panel-collapse collapse\">" +
			     	"<div class=\"panel-body\">");
		
		out.write("<table class=\"table table-bordered\">" +
					"<tr>" +
	    			"<td>ID</td>" +
	    			"<td>Abstraction</td>" +
	    			"<td>Format</td>" +
	  				"</tr>");
		for( int i = 0; i < value.size(); i ++ ){
			StringTokenizer st = new StringTokenizer(value.get(i), "|");
			String[] items = new String[6];
			int count = 0;
		    while (st.hasMoreTokens()) {
		    	items[count] = st.nextToken();
		    	count++;
		    }		    
			out.write("<tr>");
			out.write("<td>"+ i +"</td>");
			out.write("<td>"+ items[3] +"</td>");
			out.write("<td>"+ items[4] +"</td>");
			out.write("<td><a class=\"btn btn-success\" href=\""+ request.getContextPath()+"\\"+items[2] +"\" role=\"button\">Edit</a></td>");
			out.write("<td><a class=\"btn btn-success\" href=\""+ request.getContextPath()+"\\"+items[0] +"\" role=\"button\">Run</a></td>");
			out.write("</tr>");
		}
		out.write("</table>" + 	
	      			"</div>" +
	    			"</div>" +
	  				"</div>");
 	}    
%>                 
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
