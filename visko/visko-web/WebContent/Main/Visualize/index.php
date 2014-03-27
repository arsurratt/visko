<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">

    <title>VisKO - Visualize</title>

    <!-- Bootstrap core CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../assets/css/sideBar.css" rel="stylesheet">

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
          <a class="navbar-brand" href="http://cs4311.cs.utep.edu/team1">VisKo</a>
        </div>
        <div class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" role="form">
	    <button type="submit" class="btn btn-success">Logout</button>
	  </form>
	  <p class="navbar-text navbar-right">Welcome <a href="#" class="navbar-link"><?php echo('[temp@utep.ed]');?></a></p>
        </div>
      </div>
    </div>
<!--  -->

<!--  -->
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
	    <li><a href="http://cs4311.cs.utep.edu/team1/Home/index.php">Home</a></li>
	    <li><a href="#">Search History</a></li>
	    <li class="active"><a href="http://cs4311.cs.utep.edu/team1/Visualize">Visualize</a></li>
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
              <!--  ENTER CODE HERE  -->	

<h3>Option 1</h3>
<textarea class="form-control" rows="4"></textarea>
<p><a class="btn btn-primary" href="#" role="button">Submit &raquo;</a></p>

<br>
<hr>
<br>

<h3>Option 2</h3>
<div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 data-toggle="collapse" data-parent="#accordion" href="#1D" class="panel-title">
        1D Abstractions
      </h4>
    </div>
    <div id="1D" class="panel-collapse collapse">
      <div class="panel-body">
      	<img src="../assets/img/gradient.png" class="img-responsive" alt="Responsive image" width="250" height="150" align="left">
		Gradient graph is a generalization of the usual concept of derivative to the functions of several variables.
   
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 data-toggle="collapse" data-parent="#accordion" href="#2D" class="panel-title">
        2D Abstractions
      </h4>
    </div>
    <div id="2D" class="panel-collapse collapse">
      <div class="panel-body">
	<a href="http://cs4311.cs.utep.edu/team1/Visualize/SetQueryParameters.php"><img src="../assets/img/gravity-2d-contourmap-gmt.png" class="img-responsive" alt="Responsive image" width="250" height="150" align="left"></a>
	Topographic map on which the shape of the land surface is shown by contour lines, the relative spacing of the lines indicating the relative slope of the surface.
	<br><br><br><br><br><br><br><br>
	
	<img src="../assets/img/gravity-2d-pointmap-gmt.png" class="img-responsive" alt="Responsive image" width="250" height="150" align="left"><br><br><br><br><br><br><br>
	
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 data-toggle="collapse" data-parent="#accordion" href="#3D" class="panel-title">
        3D Abstractions
      </h4>
    </div>
    <div id="3D" class="panel-collapse collapse">
      <div class="panel-body">
      <img src="../assets/img/gravity-3d-isosurfacesrendering-vtk.png" class="img-responsive" alt="Responsive image" width="250" height="150" align="left">
      Three-dimensional analog of an isoline. It is a surface that represents points of a constant value (e.g. pressure, temperature, velocity, density)
      <br><br><br><br><br><br><br><br><br><br><br>
	<img src="../assets/img/gravity-3d-surfaceplot-vtk.png" class="img-responsive" alt="Responsive image" width="250" height="150" align="left">
	 Three-dimensional   gravity and magnetic modeling graph
	 <br><br><br><br><br><br><br><br><br><br><br>
        <!-- -->
      </div>
    </div>
  </div>
</div>             
              
<!--                      -->
            </div>
    	  </div>      
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/docs.min.js"></script>
  </body>
</html>
