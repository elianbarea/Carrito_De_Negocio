<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="NegocioWeb.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

               <%foreach (Dominio.Articulo item in carrito)
                {%>



            <div class="col-4">
            <a class="nav-link fs-7" style="color:black;" href="DETALLES.aspx?id=<% =item.id %>">
                <div class="card mt-4">
                    <img src="<% = item.Imagen %>" class="card-img-top" alt="PLAY4">
                    <div class="card-body">
                        <h5><% = item.Nombre %></h5>
                        <p class="card-text"><% = item.Descripcion %></p>
                        
                    </div>
                </div>
                </a>
            </div>

            <% } %>

    
</asp:Content>
