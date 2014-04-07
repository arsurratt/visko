

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String warning = "";
    String email = request.getParameter("email");
    String password= request.getParameter("pass");
    String org = request.getParameter("org");
    String first = request.getParameter("firstName");
    String last = request.getParameter("lastName");
    int priv;
    try
    {
      priv = Integer.parseInt(request.getParameter("priv"));
    }
    catch(Exception e)
    {
      priv = 1;
    }
    


    Connection con;
    PreparedStatement pstatement = null;


    if( email != null && password != null )
    {
        try{


          // set connection
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://earth.cs.utep.edu/cs4311team1sp14","cs4311team1sp14","teamTBA"); 

          //check if email is being used
          String queryString = "SELECT COUNT(*) FROM User WHERE email='" + email + "';";

          Statement stmt = con.createStatement();
          ResultSet rst = stmt.executeQuery(queryString);

          rst.next();

          if( rst.getInt(1) >= 1 )
          {
            warning = "<p style='color:red'>email already being used</p> forgot password <a href='/visko-web/Main/Recover/'>click here</a>";
          }
          else
          {

            queryString = "INSERT INTO User(email,password,first,last,org,priv) VALUES (?, ?, ?, ?, ?,?);";

            pstatement = con.prepareStatement(queryString);
            pstatement.setString(1, email);
            pstatement.setString(2, password);
            pstatement.setString(3, first);
            pstatement.setString(4, last);
            pstatement.setString(5, org);
            pstatement.setInt(6, priv);

            pstatement.executeUpdate();

            session.setAttribute("email", email);
            session.setAttribute("pass", password);
            session.setAttribute("priv", priv);

            response.sendRedirect("/visko-web/Main/Home/");

          }
        }
        catch(SQLException sqle)
        {
          warning = "<p style='color:red'>Error connecting to SQL database</p>";
        }
        catch(Exception e){
          warning = "<p style='color:red'>Error</p>";
        }
    }



%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- jsp -->
<html lang="en">
<%@page import="edu.utep.trustlab.visko.web.html.*" %>
    
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="/visko-web/Main/assets/ico/favicon.ico">

    <title>Register</title>

    <!-- Bootstrap core CSS -->
<link href="/visko-web/Main/assets/css/bootstrap.min.css" rel="stylesheet">

  </head>


<body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/visko-web/Main/">VisKo</a>
        </div>
        <div class="navbar-collapse collapse">
      <p class="navbar-text navbar-right"><a href="/visko-web/Main/" class="navbar-link">Return Home</a></p>
      
        </div>
      </div>
    </div>

<br>
<br>
<br>
<div class="container">
        <div class="row">

<form action="" method="post" class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Register</legend>


<!-- Warning -->
<div class="form-group">
  <div class="text-center" for="warning">
    <%= warning %>
  </div> 
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" type="text" placeholder="example@visko.com" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="confirmEmail">Confirm Email</label>  
  <div class="col-md-4">
  <input id="emailCheck" name="emailCheck" type="text" placeholder="example@visko.com" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="pass">Password</label>
  <div class="col-md-4">
    <input id="pass" name="pass" type="password" placeholder="" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="passCheck">Confirm Password</label>
  <div class="col-md-4">
    <input id="passCheck" name="passCheck" type="password" placeholder="" class="form-control input-md" required="">
    
  </div>
</div>

<!-- text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="firstName">First Name</label>
  <div class="col-md-4">
    <input id="firstName" name="firstName" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="lastName">Last Name</label>  
  <div class="col-md-4">
  <input id="lastName" name="lastName" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="org">Organization</label>  
  <div class="col-md-4">
  <input id="org" name="org" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Status select -->
<div class="form-group">
  <label class="col-md-4 control-label" for="priv">User Type: </label>
  <div class="col-md-4">
    <select id="priv" name="priv" class="form-control">
      <option value="1">Regular</option>
      <option value="2">Admin</option>
    </select>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="register"></label>
  <div class="col-md-4">
    <button id="register" name="register" class="btn btn-success">Create Account</button>
  </div>
</div>

</fieldset>
</form>

</div>
</div>
</div>
</body>
</html>