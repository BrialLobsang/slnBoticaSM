<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Cliente.Productos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html lang="es">
        <head>
            <meta charset="utf-8" />
            <title>Registrar Productos</title>
            <link rel="stylesheet" href="css/estilosMantenimiento.css">
        </head>
        <body>
            <h1>Registro Productos</h1>
            <form action="registrar.php" method="post" class="form-register">
                <h2 class="form__titulo">CREAR UN PRODUCTO</h2>
                <div class="contenedor-imputs">
                    <input type="text" name="codigo" placeholder="Codigo" class="input-32" pattern="[0-9]+" required>
                    <input type="text" name="codigo" placeholder="CodigoFabricante" class="input-32" pattern="[0-9]+" required>
                    <input type="text" name="codigo" placeholder="CodigoProveedor" class="input-32" pattern="[0-9]+" required>
                    <input type="text" name="codigo" placeholder="CodigoCategoria" class="input-32" pattern="[0-9]+" required>
                    <input type="text" name="nombre" placeholder="Nombre del Producto" class="input-100" pattern="[a-zA-Z]+" required>
                    <input type="text" id="Precio" name="precio" placeholder="Precio" class="input-32" pattern="[0-9]+" required>
                    <select id="tipoMedicamento" name="tipoMedicamento" class="input-48" required>
                        <option>Analgésicos</option>
                        <option>Antiácidos y antiulcerosos</option>
                        <option>Antialérgicos</option>
                        <option>Antidiarreicos y laxantes</option>
                        <option>Antiinfecciosos</option>
                        <option>Antiinflamatorios</option>
                        <option>Antipiréticos</option>
                        <option>Antitusivos y mucolíticos</option>
                    </select>
                    <input type="submit" value="Registrar" class="btn-registrar">
                </div>
            </form>
        </body>
    </html>
</asp:Content>
