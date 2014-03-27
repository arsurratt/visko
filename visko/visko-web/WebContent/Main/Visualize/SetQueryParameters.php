<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">

    <title>VisKo - Query Parameters</title>

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
	    <li><a href="http://cs4311.cs.utep.edu/team1/Home">Home</a></li>
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

<h3>Set Query Parameters</h3>
<ul class="list-inline">
  <li><img src="../assets/img/gravity-2d-contourmap-gmt.png" class="img-responsive" alt="Responsive image"></li>
  <li><p>Description - text corresponding to selected visual abstraction form previous page</p></li>
</ul>

<br>
<hr>
<br>

<ul class="list-inline">
  <li>
    <select class="form-control">
      <option>Web Browser</option>
      <option>Paraview</option>
      <option>d3</option>
    </select>   
  </li>
  <li><p><b>Viewer Sets</b> refer to programs that present the abstractions...</p></li>
<br>
  <li>
    <select class="form-control">
      <option>TIFF</option>
      <option>CSV</option>
      <option>JPEG</option>
      <option>...</option>
    </select>   
  </li>
  <li><p><b>Input Data Format</b> refers to the file encoding of the input dataset...</p></li>
<br>
  <li>
    <select class="form-control">
      <option>VTKPolyData</option>
      <option>Graph</option>
      <option>XYZ Data</option>
      <option>...</option>
    </select>   
  </li>
  <li><p><b>Input Data Type</b> refers to the data structure represented by...</p></li>
<br>
  <li>
    <input class="form-control" type="text">
  </li>
  <li><p><b>Input Data URL</b> refers to the location of the data to be visualized...</p></li>
</ul>

<p><a class="btn btn-primary" href="http://cs4311.cs.utep.edu/team1/Visualize/SelectPipelines.php" role="button">Submit &raquo;</a></p>

	<!--                   -->
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
