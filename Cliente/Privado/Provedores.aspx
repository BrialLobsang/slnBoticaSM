<%@ Page Title="Provedores" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Provedores.aspx.cs" Inherits="Cliente.Provedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html lang="es">
        <head>
            <meta charset="utf-8" />
            <title>Registrar Provedores</title>
            <link rel="stylesheet" href="css/estilosMantenimiento.css">
        </head>
        <body>
            <h1>Registro Proveedores</h1>
            <form action="registrar.php" method="post" class="form-register">
                <h2 class="form__titulo">CREAR UN PROVEDOR</h2>
                <div class="contenedor-imputs">
                    <input type="text" name="codigo" placeholder="Codigo" class="input-32" pattern="[0-9]+" required>
                    <input type="text" name="ruc" placeholder="RUC" class="input-48" pattern="[0-9]+" required>
                    <input type="text" name="razonSocial" placeholder="Razon Social" class="input-100" pattern="[a-zA-Z]+" required>
                    <p>Procedencia:</p>
                      <input type="radio" id="nacional" name="procedencia" value="nacional">
                      <label for="nacional">Nacional</label>
                      <input type="radio" id="extranjero" name="procedencia" value="extranjero">
                      <label for="extranjero">Extranjero</label><br />
                    <input type="text" name="telefono" placeholder="Telefono" class="input-100" pattern="[0-9]+" required>
                    <input type="email" name="email" placeholder="Correo Electronico" class="input-100" required>
                    <input type="text" name="pais" placeholder="Pais" class="input-48" pattern="[a-zA-Z]+" required>
                    <input type="text" name="departamento" placeholder="Departamento" class="input-48" pattern="[a-zA-Z]+" required>
                    <input type="text" name="distrito" placeholder="Distrito" class="input-48" pattern="[a-zA-Z]+" required>
                    <input type="text" name="calle" placeholder="Calle" class="input-100" pattern="[a-zA-Z]+" required>
                    <input type="text" name="referencia" placeholder="Referencia" class="input-100" pattern="[a-zA-Z]+" required>
                    <input type="submit" value="Registrar" class="btn-registrar">
                </div>
            </form>
        </body>
    </html>
</asp:Content>
