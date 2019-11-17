<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta charset="UTF-8">

<title>Cadastro de Despesa</title>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</head>
<body>

	<nav class="navbar navbar-inverse navbar-statictop"></nav>

	<form class="form-horizontal" method="post" action="/despesas">
		<c:if test=	"${!empty mensagem}">
			<div class="alert alert-success">
				<span>${mensagem}</span>
			</div>
		</c:if>	
		<div class="panel panel default">
			<div class="panel-heading"> 
				<h1 class="panel-title">Nova Despesa</h1>
			</div>
		</div>
		<div class="form-group">
			<label for="descricao" class="col-sm-2 control-label">Descrição</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="descricao" name="descricao">
			</div>
		</div>
		<div class="form-group">
			<label for="categoria" class="col-sm-2 control-label">Categotria</label>
			<div class="col-sm-2">
				<select class="form-control">
					<option value="ALIMENTACAO">Alimentação</option>
					<option value="TRANSPORTE">Transporte</option>
					<option value="VESTUARIO">Vestuário</option>
					<option value="CUIDADOS PESSOAIS ">Cuidados Pessoais</option>
					<option value="MORADIA">Moradia</option>
					<option value="LAZER">Lazer</option>
					<option value="EDUCACAO">Educação</option>
					<option value="COMPRAS">Compras</option>
					<option value="DIVERSOS">Diversos</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="data" class="col-sm-2 control-label">Data</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="data" name="data">
			</div>
		</div>
		<div class="form-group">
			<label for="valor" class="col-sm-2 control-label">Valor</label>
			<div class="col-sm-2">
				<input type="text" class="form-control" id="valor" name="valor">
			</div>
		</div>
		<div class="form-group">
			<label for="observacoes" class="col-sm-2 control-label">Observações</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="observacoes" name="observacoes">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-primary">Salvar</button>
			</div>
		</div>
	</form>



</body>
</html>