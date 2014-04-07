<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Visko</title>

    <%@ include file="../header.jsp" %>

        <!-- Bootstrap core CSS -->
    <link href="/visko-web/Main/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/visko-web/Main/assets/css/sideBar.css" rel="stylesheet">
  </head>

<body>
     
	<div class="container-fluid">
		<div class="row">
        	<div class="col-sm-3 col-md-2 sidebar">
          		<ul class="nav nav-sidebar">
			      <li class="active"><a href="/visko-web/Main/Home/">Home</a></li>
			      <li><a href="#">Search History</a></li>
			      <li><a href="/visko-web/Main/Visualize.jsp">Visualize</a></li>
			      <li><a href="#">Manage Services</a></li>
			      <li><a href="#">Configure Account</a></li>
          		</ul>
          	<ul class="nav nav-sidebar">
			<li><a href=""></a></li>
          	</ul>
        	</div>
    	</div>
	</div>

  <div class="col-md-10 col-md-offset-2">
    <div class="container">
      <div class="row">
        <h1>What is VisKo?</h1>
        <p>VisKo is a framework supporting the answering of visualization queries that allow users to specify what visualizations they want generated rather that specifying how they should be generated.</p>
        <br>
              <h2>What are the Benefits?</h2>
        <p>VisKo can automatically figure out how to generate visualizations given only a query that specifies what visualizations are being requested. Below is a variety of different visualizations generated from a single gravity dataset, resulting from the execution of a single VisKo query.</p>
            </div>
        </div>      
  </div>
  <div class="col-md-10 col-md-offset-2">
    <img src="/visko-web/Main/assets/img/splash_vis.png" class="img-responsive" alt="Responsive image">
  </div>
      </div>
    </div>

</body>
</html>