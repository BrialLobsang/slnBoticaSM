<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Cliente.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <html>
		<head>
		<title>Ejemplo de imagenes responsivas</title>
		<link rel="stylesheet" href="estilos.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		</head>
		<body>
		<div class="logo">
			<center>
				<asp:Label ID="Label1" runat="server" Text="Bienvenido: "></asp:Label>
				<asp:LoginName ID="LoginName1" runat="server"  /><br>
				<asp:LoginStatus ID="LoginStatus1" runat="server"></asp:LoginStatus><br>
				<img src="img/fondoPantalla.png">
			</center>
			</div>

			</body>
	</html>
    </form>
</asp:Content>
