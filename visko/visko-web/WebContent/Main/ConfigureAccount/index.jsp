<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="../includePage/header.jsp" %>
<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String email = request.getParameter("email");
    String password= request.getParameter("pass");
    Connection con;
    PreparedStatement pstatement = null;


    if( email != null && password != null )
    {
        try{


        //check if email is already being used - MISSING
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://earth.cs.utep.edu/cs4311team1sp14","cs4311team1sp14","teamTBA"); 

        String queryString = "UPDATE INTO User(email,password) VALUES (?, ?);";

        pstatement = con.prepareStatement(queryString);
        pstatement.setString(1, email);
        pstatement.setString(2, password);
        pstatement.executeUpdate();

        session.setAttribute("email", email);
        session.setAttribute("pass", password);

        response.sendRedirect("/visko-web/Main/Home/");

        }
        catch(Exception e){
            out.println("EXCEPTION");
        }
    }


%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

  <head>
    <title>Visko - Configure Account</title>

   

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
	    <li><a href="/visko-web/Main/Home">Home</a></li>
	    <li><a href="/visko-web/Main/SearchHistory">Search History</a></li>
	    <li><a href="/visko-web/Main/Visualize">Visualize</a></li>
	    <li><a href="/visko-web/Main/ManageServices">Manage Services</a></li>
	    <li class="active"><a href="#">Configure Account</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href=""></a></li>
          </ul>
        </div>
        <div class="col-md-10 col-md-offset-2">
	  <div class="container">
	    <div class="row">


	<form action="index.jsp" method="post" class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Configure Account</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" type="text" placeholder="example@visko.com" class="form-control input-md">
    
  </div>
 </div> 

<!-- modify email -->  
  <div class="form-group">
  <label class="col-md-4 control-label" for="email">New Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" type="text" placeholder="example@visko.com" class="form-control input-md">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="pass">Password</label>
  <div class="col-md-4">
    <input id="pass" name="pass" type="password" placeholder="" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Password input new password-->
<div class="form-group">
  <label class="col-md-4 control-label" for="passCheck">Change Password</label>
  <div class="col-md-4">
    <input id="passCheck" name="passCheck" type="password" placeholder="" class="form-control input-md" required="">
    
  </div>
</div>


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="changes"></label>
  <div class="col-md-4">
    <button id="changes" name="changes" class="btn btn-success">Submit Changes</button>
  </div>
</div>
	    
	    
</fieldset>
</form>

	    
	</body>
	    
</html>