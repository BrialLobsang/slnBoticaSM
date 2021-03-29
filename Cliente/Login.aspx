<!DOCTYPE html>
<html lang="es">
	<body>
		<link rel="stylesheet" href="css/estilos.css">
		<div class="login">
			<div class="login-screen">
				<div class="app-title">
					<h2>BOTICA</h2>
					<h3>SEÑOR DE LOS MILAGROS</h3>
					<img src="img/logo.png" width="100" height="100"/>
					<h1></h1>
				</div>

				<div class="login-form">
					<div class="control-group">
					<input type="text" class="login-field" value="" placeholder="Usuario" id="login-name">
					<label class="login-field-icon fui-user" for="login-name"></label>
					</div>

					<div class="control-group">
					<input type="password" class="login-field" value="" placeholder="Contraseña" id="login-pass">
					<label class="login-field-icon fui-lock" for="login-pass"></label>
					</div>

					<a class="btn btn-primary btn-large btn-block" runat="server" href="~/Index">Ingresar</a>
					<a class="login-link" href="#">¿Olvidaste tu contraseña?</a>
				</div>
			</div>
		</div>
	</body>
</html>