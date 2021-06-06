<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="NegocioWeb.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


       <div class="container">
        <!--CONTENEDOR DE PRODUCTOS -->
        <div class="row align-items-center">
               <%foreach (Dominio.Articulo item in carrito)
                {%>



            <div class="col-4">
            <a class="nav-link fs-7" style="color:black;" href="DETALLES.aspx?id=<% =item.id %>">
                <div class="card mt-4">
                    <img src="<% = item.Imagen %>" class="card-img-top" alt="PLAY4">
                    <div class="card-body">
                        <h5 class="text-center"><% = item.Nombre %></h5>
                        <p style="align-content:center">
                             <a href="COMPRADO.aspx" class="btn btn-primary">Comprar</a>

                        <a href="Carrito.aspx?ELIMINAR=<% = item.id.ToString() %>" class="btn btn-primary">Eliminar</a>
                    </p>
                            </div>
                </div>
                </a>
            </div>





            <% } %>

            </div>
           </div>
<%--    <table>
        <tr>
            <td><a href="Carrito.aspx?ELIMINAR=<% = item.id.ToString() %>" class="btn btn-primary">Eliminar</a></td>
        </tr>
    </table>--%>
    
</asp:Content>
