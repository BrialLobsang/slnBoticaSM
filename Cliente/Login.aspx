<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cliente.Login" %>
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
				<form id="form1" runat="server">
					<div class="login-form">
						<div class="control-group">
							<asp:TextBox type="text" CssClass="login-field" ID="loginName" placeholder="Usuario" runat="server"></asp:TextBox>
						</div>

						<div class="control-group">
							<asp:TextBox TextMode="Password" CssClass="login-field-icon fui-lock" ID="loginPass" placeholder="Contraseña" runat="server"></asp:TextBox>
						    <asp:Label ID="mensaje" ForeColor="Red" runat="server" Text=""></asp:Label>
						</div>

						<asp:Button CssClass="btn btn-primary btn-large btn-block" ID="btnIngresar" runat="server" Text="Ingresar" href="~/Index" OnClick="btnIngresar_Click"/>

						<a class="login-link" href="#">¿Olvidaste tu contraseña?</a>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>