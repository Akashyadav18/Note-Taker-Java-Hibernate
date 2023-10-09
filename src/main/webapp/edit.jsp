<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>
	<div class="container">
   		<%@include file="navbar.jsp" %>
   		<h1 class="text-center">Edit Notes</h1>
   		<br>
   		
   		<%
   			int noteId = Integer.parseInt(request.getParameter("note_id"));
   			
   			Session s=FactoryProvider.getFactory().openSession();
   			Note note = (Note)s.get(Note.class, noteId);
   			
   		%>
   		
   		<div class="container" style="width: 700px">  		
	   		<form action="updateServlet" method="post">
	   			<input value=<%= note.getId() %> name="noteId" type="hidden"/>
			  <div class="mb-3">
			    <label for="title" class="form-label">Note Title</label>
			    <input 
				    name="title"
				    required 
				    type="text" 
				    class="form-control" 
				    id="title" 
				    placeholder="Title..." 
				    aria-describedby="Title"
				    value="<%= note.getTitle() %>"
			    />
			  </div>
			  
			  <div class="mb-3">
			    <label for="content" class="form-label">Note Description</label>
			    <textarea 
				    name="content"
				    required 
				    id="content" 
				    placeholder="Note Desc..." 
				    aria-describedby="content"
				    class="form-control" 
				    style="height: 200px"><%= note.getContent() %>
			    </textarea>
			  </div>
			  
			  <div class="container text-center">			
			  	<button type="submit" class="btn btn-success">Save Note</button>
			  </div>
			</form>
		</div> 
   		
   	</div>
</body>
</html>