<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
	<div class="container">
   		<%@include file="navbar.jsp" %>
   		<h1 style='text-align:center'>All Notes</h1>
   		
   		<div class="row">
   			<div class="col-12">
   			
   				<%
		   			Session s = FactoryProvider.getFactory().openSession();
		   			Query q= s.createQuery("from Note");
		   			List<Note> list = q.list();
		   			for(Note note:list)
		   			{		   				
		   		%>
		   		<div class="card border-dark mx-auto mb-3 mt-3" style="width: 60rem;">
		   		<!-- 
				  <img src="img/sticky-note.png	" class="card-img-top" style="max-width:100px" alt="...">
		   		 -->
				  <div class="card-body fs-4">
				    <h3 class="card-header text-center"><%=note.getTitle() %></h3>
				    <p class="card-text"><%=note.getContent() %></p>
				    <div>
				    	<p class="fs-6"><%= note.getAddedDate() %></p>			    
					    <div class="text-end">
					    	<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary mr-4">Update</a>
					    	<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
					    </div>
				    </div>
				  </div>
				</div>
		   		<% 		   				
		   			}
		   			s.close();
		   		%>
   			
   			</div>
   		</div>
   		
   </div>
</body>
</html>