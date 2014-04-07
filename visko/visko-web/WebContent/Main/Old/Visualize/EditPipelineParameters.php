<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">

    <title>VisKO - Edit Parameters</title>

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


<h3>Edit Parameters for Pipeline [12]</h3>
<div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 data-toggle="collapse" data-parent="#accordion" href="#service1" class="panel-title">
        Service 1
      </h4>
    </div>
    <div id="service1" class="panel-collapse collapse in">
      <div class="panel-body">
	<ul class="list-inline">
  	  <li><p>Parameter 1 = </p></li>
  	  <li>
    	    <input class="form-control" type="text">
  	  </li>  
	<br>
  	  <li><p>Parameter 2 = </p></li>
  	  <li>
    	    <input class="form-control" type="text">
  	  </li>  
	<br>
 	  <li><p>Parameter 3 = </p></li>
	  <li>
    	    <input class="form-control" type="text">
  	  </li>  
	<br>
	</ul> 	
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 data-toggle="collapse" data-parent="#accordion" href="#service2" class="panel-title">
        Service 2
      </h4>
    </div>
    <div id="service2" class="panel-collapse collapse in">
      <div class="panel-body">
	<ul class="list-inline">
  	  <li><p>Parameter 4 = </p></li>
  	  <li>
    	    <input class="form-control" type="text">
  	  </li>  
	</ul> 	
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 data-toggle="collapse" data-parent="#accordion" href="#service3" class="panel-title">
        Service 3
      </h4>
    </div>
    <div id="service3" class="panel-collapse collapse in">
      <div class="panel-body">
	<ul class="list-inline">
  	  <li><p>Parameter 5 = </p></li>
  	  <li>
    	    <input class="form-control" type="text">
  	  </li>  
	<br>
  	  <li><p>Parameter 6 = </p></li>
  	  <li>
    	    <input class="form-control" type="text">
  	  </li>  
	</ul> 	
      </div>
    </div>
  </div>
</div>

<a class="btn btn-success" href="http://cs4311.cs.utep.edu/team1/Visualize/SelectPipelines.php" role="button">Save and Return &raquo;</a>

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
