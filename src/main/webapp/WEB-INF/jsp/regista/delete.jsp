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
			        <h2 class="text-danger">Sicuro di voler eliminare questo regista?</h2>
			    </div>
			
			    <div class='card-body'>
			    <form:form method="post" action="${pageContext.request.contextPath}/regista/elimina">
			    
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Id:</dt>
					  <dd class="col-sm-9">${delete_regista_attr.id}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Nome:</dt>
					  <dd class="col-sm-9">${delete_regista_attr.nome}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Cognome:</dt>
					  <dd class="col-sm-9">${delete_regista_attr.cognome}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Nickname:</dt>
					  <dd class="col-sm-9">${delete_regista_attr.nickName}</dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Data di Nascita:</dt>
					  <dd class="col-sm-9"><fmt:formatDate type = "date" value = "${delete_regista_attr.dataDiNascita}" /></dd>
			    	</dl>
			    	
			    	<dl class="row">
					  <dt class="col-sm-3 text-right">Sesso:</dt>
					  <dd class="col-sm-9">${delete_regista_attr.sesso}</dd>
			    	</dl>
			    	
			    	<div class='card-footer row'>
			        <a href="${pageContext.request.contextPath }/regista/" class='btn btn-outline-secondary col" style='width:80px'>
			        Back</a>
			        
			        
					<button type="submit" name="submit" value="submit" id="submit" class="btn btn-danger col" >ELIMINA</button>
					<input type="hidden" name="idRegista" value="${delete_regista_attr.id}">
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