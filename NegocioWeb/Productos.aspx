<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="NegocioWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">NUESTROS PRODUCTOS</h2>

    

    <%--<asp:GridView ID="dgvProducto" runat="server"></asp:GridView> sirbe para mostrar grilla--%>
     

    <div class="container"> <!--CONTENEDOR DE PRODUCTOS -->
        <div class="row align-items-center">
                <%foreach (Dominio.Articulo item in arti)
            {%>
        


            <div class="col-4">
                <div class="card ">
                    <img src="<% = item.Imagen %>" class="card-img-top" alt="PLAY4">
                    <div class="card-body">
                        <h5><% = item.Nombre %></h5>
                        <p class="card-text"><% = item.Descripcion %></p>
                    </div>
                </div>
            </div>


                 
        <% } %>

        </div>
    </div>
    <!-- CONTAINER-->




    <%--    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>--%>
</asp:Content>
