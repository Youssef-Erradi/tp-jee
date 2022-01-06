<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Ajout</title>
	<link type="text/css" rel="stylesheet" href="assets/css/materialize.min.css"  media="screen,projection"/>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col s8 offset-s2">
			    <form action="Login" method="post">
				    <div class="card horizontal">
				      <div class="card-stacked">
				        <div class="card-content">
				        	<span class="card-title">
				        		S'authentifier
				        	</span>
					        <div class="input-field col s11">
					          <input id="username" type="text" class="validate" name="username" required>
					          <label for="username">Username</label>
					        </div>
					        <div class="input-field col s11">
					          <input id="password" type="password" class="validate" name="password" required>
					          <label for="password">Password</label>
					        </div>
				        </div>
				        <div class="card-action">	          
						  <button class="btn waves-effect waves-light blue" type="submit">Se Connecter
						  </button>
						  <button class="btn waves-effect waves-light red" type="reset">Vider
						  </button>
				        </div>
				      </div>
				    </div>
				</form>
	  		</div>
	  	</div>
	 </div>
	 <script type="text/javascript" src="assets/js/materialize.min.js"></script>
</body>
</html>