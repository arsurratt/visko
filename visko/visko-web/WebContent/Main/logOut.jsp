<%

	session.removeAttribute("email");
	session.removeAttribute("pass");
	response.sendRedirect("/visko-web/Main/");
				
%>