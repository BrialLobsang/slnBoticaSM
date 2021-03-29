<%@ Page Title="Clientes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Cliente.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html lang="es">
        <head>
            <meta charset="utf-8" />
            <title>Registrar Clientes</title>
            <link rel="stylesheet" href="css/estilosMantenimiento.css">
        </head>
        <body>
            <h1>Registro Clientes</h1>
            <form action="registrar.php" method="post" class="form-register">
                <h2 class="form__titulo">CREAR UN CLIENTE</h2>
                <div class="contenedor-imputs">
                    <input type="text" name="codigo" placeholder="Codigo" class="input-32" pattern="[0-9]+" required>
                    <select id="tipDoc" class="input-48" required>
                        <option>DNI</option>
                        <option>Pasaporte</option>
                    </select>
                    <input type="text" name="nroDoc" placeholder="Número de Documeto" class="input-48" pattern="[0-9]+" required>
                    <input type="text" name="nombres" placeholder="Nombres" class="input-100" pattern="[a-zA-Z]+" required>
                    <input type="text" name="apellidoPaterno" placeholder="Apellido Paterno" class="input-48" pattern="[a-zA-Z]+" required>
                    <input type="text" name="apellidoMaterno" placeholder="Apellido Materno" class="input-48" pattern="[a-zA-Z]+" required>
                    <input type="text" name="direccion" placeholder="Dirección" class="input-100" required>
                    <input type="submit" value="Registrar" class="btn-registrar">
                </div>
            </form>
        </body>
    </html>
</asp:Content>
