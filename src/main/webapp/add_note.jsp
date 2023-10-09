<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Note</title>

<%@include file="all_js_css.jsp" %>

</head>
<body>

	<div class="container">
   		<%@include file="navbar.jsp" %>
   		<h1 class="text-center">Add Note</h1>
   		<br/>
   		
   		<!-- Form -->
   		<div class="container" style="width: 700px">  		
	   		<form action="SaveNoteServlets" method="post">
	   		
			  <div class="mb-3">
			    <label for="title" class="form-label">Note Title</label>
			    <input 
			    name="title"
			    required 
			    type="text" 
			    class="form-control" 
			    id="title" 
			    placeholder="Title" 
			    aria-describedby="Title" />
			  </div>
			  
			  <div class="mb-3">
			    <label for="content" class="form-label">Note Description</label>
			    <textarea 
			    name="content"
			    required 
			    id="content" 
			    placeholder="Note Desc..." 
			    class="form-control" 
			    style="height: 200px">
			    </textarea>
			  </div>
			  
			  <div class="container text-center">			
			  	<button type="submit" class="btn btn-primary">Add Note</button>
			  </div>
			</form>
		</div> 
   		
   	</div>

</body>
</html>