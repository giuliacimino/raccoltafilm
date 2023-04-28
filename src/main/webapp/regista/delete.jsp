<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="it.prova.raccoltafilm.model.Regista"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="it" class="h-100" >
	 <head>

	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	 	
	   <title>Elimina Regista</title>
	   
	 </head>
	  <body class="d-flex flex-column h-100">

	<!-- Fixed navbar -->
	<jsp:include page="../navbar.jsp"></jsp:include>


	<!-- Begin page content -->
	<main class="flex-shrink-0">
		<div class="container">

			<div class='card'>
				<div class='card-header'>
					<h5>Visualizza dettaglio</h5>
				</div>


					<div class='card-body'>
						<dl class="row">
							<dt class="col-sm-3 text-right">Id:</dt>
							<dd class="col-sm-9">${delete_regista_attr.id}</dd>
						</dl>

						<dl class="row">
							<dt class="col-sm-3 text-right">nome:</dt>
							<dd class="col-sm-9">${delete_regista_attr.nome}</dd>
						</dl>

						<dl class="row">
							<dt class="col-sm-3 text-right">cognome:</dt>
							<dd class="col-sm-9">${delete_regista_attr.cognome}</dd>
						</dl>

						<dl class="row">
							<dt class="col-sm-3 text-right">nickname:</dt>
							<dd class="col-sm-9">${delete_regista_attr.nickName}</dd>
						</dl>

						<dl class="row">
							<dt class="col-sm-3 text-right">Data di Nascita:</dt>
							<dd class="col-sm-9">
								<fmt:parseDate value="${delete_regista_attr.dataDiNascita}"
									pattern="yyyy-MM-dd" var="localDateToBeParsed" type="date" />
								<fmt:formatDate pattern="dd/MM/yyyy"
									value="${localDateToBeParsed}" />
							</dd>
						</dl>



						<!-- info Regista -->
					    	<p>
							  <a class="btn btn-primary btn-sm" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
							    Info Films
							  </a>
							</p>
						
						<!-- end card body -->
					</div>

					<div class='card-footer'>
						<form action="${pageContext.request.contextPath}/ExecuteDeleteRegistaServlet" method="post">
					    		<input type="hidden" name="idRegistaDelete" value="${delete_regista_attr.id}">
						    	<button type="submit" name="submit" id="submit" class="btn btn-danger">Conferma</button>
						<a
							href="${pageContext.request.contextPath}/ExecuteListRegistaServlet"
							class='btn btn-outline-secondary' style='width: 80px'> <i
							class='fa fa-chevron-left'></i> Back
						</a>
						</form>
					</div>
					<!-- end card -->
				</div>


				<!-- end container -->
			</div>
	</main>

	<!-- Footer -->
	<jsp:include page="../footer.jsp" />
	  </body>
</html>