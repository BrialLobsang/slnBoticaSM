<%@ Page Title="Ventas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="Cliente.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html lang="es">
        <head>
            <meta charset="utf-8" />
            <title>Registrar Venta</title>
            <link rel="stylesheet" href="css/estilosMantenimiento.css">
        </head>
        <body>
            <h1>Registro Venta</h1>
            <form action="registrar.php" method="post" class="form-register">
                <h2 class="form__titulo">CREAR UNA VENTA</h2>
                <div class="contenedor-imputs">
                    <input type="text" id="codigo" name="codigo" placeholder="Código Venta" class="input-32" pattern="[0-9]+" required>
                    <input type="text" id="codempleado" name="codempleado" placeholder="Código Empleado" class="input-32" pattern="[0-9]+" required>
                    <input type="text" id="codcliente" name="codcliente" placeholder="Codigo Cliente" class="input-32" pattern="[0-9]+" required>
                    <input type="text" id="producto" name="producto" placeholder="Producto" class="input-100" required>
                    <input type="text" id="cantidad" name="cantidad" placeholder="Cantidad" class="input-32" pattern="[0-9]+" required>
                    <input type="date"  id="fecha" name="trip-start" value="2021-03-28" min="2021-03-28" max="2021-12-31" required>
                    <p>Tipo de Pago:</p>
                      <input type="radio" id="efectivo" name="pago" value="efectivo">
                      <label for="efectivo">Efectivo</label>
                      <input type="radio" id="tarjeta" name="pago" value="tarjeta">
                      <label for="tarjeta">Tarjeta</label><br />
                    <input type="submit" value="Registrar" class="btn-registrar">
                </div>
            </form>
        </body>
    </html>
</asp:Content>
