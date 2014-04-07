<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Visko</title>

    <%@ include file="../includePage/header.jsp" %>

        <!-- Bootstrap core CSS -->
    <link href="/visko-web/Main/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/visko-web/Main/assets/css/sideBar.css" rel="stylesheet">
  </head>

  <body>

    <%@ page import="java.util.*" %>     
    <%@ include file="../includePage/sideBar.jsp" %>

    <div class="col-md-10 col-md-offset-2">
      <div class="container">
        <div class="row">

        <!-- PAGE INFORMAITON GOES HERE -->

          <h3>Select Pipeline</h3>
          <%  
            String test = (String) request.getAttribute( "TEST" );
            String re = (String) request.getSession().getAttribute("re");
    
            TreeMap<String, ArrayList<String>> pipeLines = (TreeMap<String, ArrayList<String>>) request.getSession().getAttribute("resultMap");
    
            // Use iterator to display the keys and associated values
            Set<String> keys = pipeLines.keySet();
            Iterator<String> it = keys.iterator();
            
            
            
            out.println("<div class=\"panel-group\" id=\"accordion\">");
            while( it.hasNext() )
            {
              String key = it.next();
              ArrayList<String> value = pipeLines.get(key);
    
              out.println(
                "<div class=\"panel panel-default\">" +
                "<div class=\"panel-heading\">" +
                "<h4 data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#" +key +"\" class=\"panel-title\">"
              );  
              out.println(key);
              out.println(
                "</h4>" +
                "</div>" +
                "<div id=\""+ key +"\" class=\"panel-collapse collapse\">" +
                "<div class=\"panel-body\">"
              );
    
              out.println(
                "<table class=\"table table-bordered\">" +
                "<tr>" +
                "<td>ID</td>" +
                "<td>Abstraction</td>" +
                "<td>Format</td>" +
                "</tr>"
              );

              for( int i = 0; i < value.size(); i ++ )
              {
                StringTokenizer st = new StringTokenizer(value.get(i), "|");
                String[] items = new String[6];
                int count = 0;
                while (st.hasMoreTokens())
                {
                  items[count] = st.nextToken();
                  count++;
                }       
                out.println("<tr>");
                out.println("<td>"+ i +"</td>");
                out.println("<td>"+ items[3] +"</td>");
                out.println("<td>"+ items[4] +"</td>");
                out.println("<td><a class=\"btn btn-success\" href=\""+ request.getContextPath()+"\\"+items[2] +"\" role=\"button\">Edit</a></td>");
                out.println("<td><a class=\"btn btn-success\" href=\""+ request.getContextPath()+"\\"+items[0] +"\" role=\"button\">Run</a></td>");
                out.println("</tr>");
              }
              
              out.println("</table>" +  
                "</div>" +
                "</div>" +
                "</div>"
              );
            }    
          %>                 


        </div>      
      </div>
    </div>

    <%@ include file="../includePage/footer.jsp" %>
  </body>
</html>