<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Visko - Search History</title>

    <%@ include file="../includePage/header.jsp" %>

        <!-- Bootstrap core CSS -->
    <link href="/visko-web/Main/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/visko-web/Main/assets/css/sideBar.css" rel="stylesheet">

  </head>

  <body>
     
    <%@ include file="../includePage/sideBar.jsp" %>

    <div class="col-md-10 col-md-offset-2">
      <div class="container">
        <div class="row">

          <form id="changeForm" method="post" class="form-horizontal">
          <fieldset>
          

            <div class="row">
            


              <div class="col-md-6">
                <!-- Change Pass -->
                <h3> Visualization Search Criteria </h3>

                

                    <div class="row">
                      <label class="control-label" for="abs">Abstraction</label>
                      <select class="form-control" name="abstraction">
                        <option value="test">test</option>
                      </select>

                      <label class="control-label" for="inURL">Input URL</label>
                      <select class="form-control" name="inputURL">
                        <option value="test">test</option>
                      </select>

                      <label class="control-label" for="viewerSet">Viewer Set</label>
                      <select class="form-control" name="viewerSet">
                        <option value="test">test</option>
                      </select>

                      <label class="control-label" for="sourceFormat">Source Format</label>
                      <select class="form-control" name="sourceFormat">
                        <option value="test">test</option>
                      </select>

                      <label class="control-label" for="sourceType">Source Type</label>
                      <select class="form-control" name="sourceType">
                        <option value="test">test</option>
                      </select>

                    </div>
              
              </div>

              <div class="col-md-6">
                <div class="row">
                  <br><br><br>
                  <label class="control-label" for="date">DatePIcker HERE</label>


                  <label class="control-label" for="targetFormat">Target Format</label>
                  <select class="form-control" name="targetFormat">
                    <option value="test">test</option>
                  </select>

                  <label class="control-label" for="targetType">Target Type</label>
                  <select class="form-control" name="targetType">
                    <option value="test">test</option>
                  </select>

                  <div class="text-center">
                    <br>
                    <button id="submitButton" name="submitButton" type="submit" class="btn btn-success">Submit</button>
                   </div>
                </div>
              </div>





            </div>

            <hr>

          </fieldset>
          </form>


        </div>
      </div>      
    </div>

  </body>
</html>