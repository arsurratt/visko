package edu.utep.trustlab.visko.web.html;

public class Template {
	
	private static String logoPath;
	private static String org;
	public static void setLogoPath(String path){
		logoPath = path;
	}
	
	public static String getLogoPath(){
		return logoPath;
	}
	
	public static void setOrganization(String organization){
		org = organization;
	}
	
	public static String getOrganization(){
		return org;
	}
	
	public static String getNewHeader(){
		return "<%@ page language=\"java\" contentType=\"text/html; charset=ISO-8859-1\" pageEncoding=\"ISO-8859-1\"%>" +
				"<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">" +
				"<html lang=\"en\">" +
				"<%@page import=\"edu.utep.trustlab.visko.web.html.*\" %>" +
				"<head>" +
				"<meta charset=\"utf-8\">" +
				"<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">" +
				"<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">" +
				"<link rel=\"shortcut icon\" href=\"assets/ico/favicon.ico\">" +
				"<title>VisKo</title>" +
				"<!-- Bootstrap core CSS -->" +
				"<link href=\"assets/css/bootstrap.min.css\" rel=\"stylesheet\">" +
				"<!-- Custom styles for this template -->" +
				"<link href=\"assets/css/sideBar.css\" rel=\"stylesheet\">" +
				"</head>" +
				"<body>" +
				"<!-- Nav Bar  -->" +
				"<div class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">" +
				"<div class=\"container-fluid\">" +
		        "<div class=\"navbar-header\">" +
		        "<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">" +
		        "<span class=\"sr-only\">Toggle navigation</span>" +
		        "<span class=\"icon-bar\"></span>" +
		        "<span class=\"icon-bar\"></span>" +
		        "<span class=\"icon-bar\"></span>" +
		        "</button>" +
		        "<a class=\"navbar-brand\" href=\"http://localhost:8080/visko-web/\">VisKo</a>" +
		        "</div>" +
		        "<div class=\"navbar-collapse collapse\">" +
		        "<form class=\"navbar-form navbar-right\" role=\"form\">" +
			    "<button type=\"submit\" class=\"btn btn-success\">Logout</button>" +
			    "</form>" +
			    "<p class=\"navbar-text navbar-right\">Welcome <a href=\"#\" class=\"navbar-link\"><% out.write(\"[temp@utep.ed]\");%></a></p>" +
		        "</div>" +
		        "</div>" +
		        "</div>" +
		        "<!-- End Nav Bar  -->" +
		        "<!-- Side Bar  -->" +
		        "<div class=\"container-fluid\">" +
		        "<div class=\"row\">" +
		        "<div class=\"col-sm-3 col-md-2 sidebar\">" +
		        "<ul class=\"nav nav-sidebar\">" +
		        "<li><a href=\"http://localhost:8080/visko-web/\">Home</a></li>" +
		        "<li><a href=\"http://localhost:8080/visko-web/SearchHistory.jsp\">Search History</a></li>" +
		        "<li><a href=\"http://localhost:8080/visko-web/Visualize.jsp\">Visualize</a></li>" +
		        "<li><a href=\"http://localhost:8080/visko-web/ManageServices.jsp\">Manage Services</a></li>" +
		        "<li><a href=\"http://localhost:8080/visko-web/ConfigureAccount.jsp\">Configure Account</a></li>" +
		        "</ul>" +
		        "<ul class=\"nav nav-sidebar\">" +
		        "<li><a href=\"\"></a></li>" +
		        "</ul>" +
		        "</div>" +
		        "<div class=\"col-md-10 col-md-offset-2\">" +
		        "<div class=\"container\">" +
		        "<div class=\"row\">" +
			    "<!-- End Side Bar  -->";
	}
	
	public static String getCompleteHeader(){
		return "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">" +
				"<html>" +
				"<head>" +
				"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">" +
				"<link rel=\"stylesheet\" type=\"text/css\" href=\"visko-style.css\" />" +
				"<title>Visko Server</title>" +
				"</head>" +
				"<body>" +
				"<div id=\"container\">" +
				"<div id=\"header\">" +
				"	 <img src=\"" + Template.getLogoPath() + "\" style=\"padding:5px;\" + />" +
				"    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				"    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				"    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				"    <h1 style=\"padding-top:0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + Template.getOrganization() + " VisKo Server</h1>" +
				"</div><br>" +
				"<div id=\"menu\">" +
				"    <a href=\".\">Server Home</a>" +
				"    <a href=\"query.jsp\">Query Examples</a>" +
				"    <a href=\"knowledge-base.jsp\">Knowledge Base</a>" +
				"    <a href=\"modules.jsp\">Modules</a>" +
				"	 <a href=\"http://trust.utep.edu/visko\">VisKo Home</a>" +
				"</div>" +
				"<div id=\"content\">";
	}
	
	public static String getHeader(){
		System.out.println("getting header stuff");
		return "<div id=\"header\">" +
				"	 <img src=\"" + Template.getLogoPath() + "\" style=\"padding:5px;\" />" +
				"    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				"    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				"    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				"    <h1 style=\"padding-top:0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + Template.getOrganization() + " VisKo Server</h1>" +
				"</div><br>" +
				"<div id=\"menu\">" +
				"    <a href=\".\">Server Home</a>" +
				"    <a href=\"query.jsp\">Query Examples</a>" +
				"    <a href=\"knowledge-base.jsp\">Knowledge Base</a>" +
				"    <a href=\"modules.jsp\">Modules</a>" +
				"	 <a href=\"http://trust.utep.edu/visko\">VisKo Home</a>" +
				"</div>";
	}
	
	public static String getNewFooter(){
		return 
				"<!--  footer  -->" +
	      		"</div>" +
	      		"</div>" +
	      		"<!-- Bootstrap core JavaScript" +
	      		"================================================== -->" +
	      		"<!-- Placed at the end of the document so the pages load faster -->" +
	      		"<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js\"></script>" +
	      		"<script src=\"assets/js/bootstrap.min.js\"></script>" +
	      		"<script src=\"assets/js/docs.min.js\"></script>" +
	      		"</body>" +
	      		"</html>";
	}
	
	public static String getFooter(){
		return 
				"<font color=\"white\"><i><b>Copyright @2012 CyberShARE Center, The University of Texas at El Paso</b></i></font>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>";
	}
	
	public static String getCompleteFooter(){
		return 
				"</div>" +
				"</div>" +
				"<font color=\"white\"><i><b>Copyright @2012 CyberShARE Center, The University of Texas at El Paso</b></i></font>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"<p>&nbsp;</p>" +
				"</body>" +
				"</html>";
	}
}
