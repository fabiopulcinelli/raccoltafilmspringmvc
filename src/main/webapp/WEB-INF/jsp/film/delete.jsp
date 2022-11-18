<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!doctype html>
<html lang="it" class="h-100">
<head>
	<!-- Common imports in pages -->
	<jsp:include page="../header.jsp" />
	<title>Delete elemento</title>
	
</head>
<body class="d-flex flex-column h-100">
	<!-- Fixed navbar -->
	<jsp:include page="../navbar.jsp" />
	
	<!-- Begin page content -->
	<main class="flex-shrink-0">
	  	<div class="container">
			
			<div class='card'>
			    <div class='card-header'>
			        <h2 class="text-danger">Sicuro di voler eliminare questo film?</h2>
			    </div>
			
			    <div class='card-body'>
			    <form:form method="post" action="${pageContext.request.contextPath}/film/elimina">
			    
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Id:</dt>
					  <dd class="col-sm-9">${delete_film_attr.id}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Titolo:</dt>
					  <dd class="col-sm-9">${delete_film_attr.titolo}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Genere:</dt>
					  <dd class="col-sm-9">${delete_film_attr.genere}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Data di Pubblicazione:</dt>
					  <dd class="col-sm-9"><fmt:formatDate type = "date" value = "${delete_film_attr.dataPubblicazione}" /></dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Durata in minuti:</dt>
					  <dd class="col-sm-9">${delete_film_attr.minutiDurata}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Nome e Cognome del regista:</dt>
					  <dd class="col-sm-9">${delete_film_attr.regista.nome} ${delete_film_attr.regista.cognome}</dd>
			    	</dl>
			    	
			    	<div class='card-footer row'>
			        <a href="${pageContext.request.contextPath }/film/" class='btn btn-outline-secondary col" style='width:80px'>
			        Back</a>
			        
			        
					<button type="submit" name="submit" value="submit" id="submit" class="btn btn-danger col" >ELIMINA</button>
					<input type="hidden" name="idFilm" value="${delete_film_attr.id}">
			        </form:form>
			    </div>
			    <!-- end card body -->
			    </div>

			<!-- end card -->
			</div>	

	</main>
	<jsp:include page="../footer.jsp" />
	
</body>
</html>