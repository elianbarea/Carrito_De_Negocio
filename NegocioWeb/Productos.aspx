<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="NegocioWeb.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="text-center">NUESTROS PRODUCTOS</h2>



    <%--<asp:GridView ID="dgvProducto" runat="server"></asp:GridView> sirbe para mostrar grilla--%>
        
    <i class="fas fa-search fa-x2"></i> <asp:TextBox ID="txtbuscar" runat="server" /> 
                <%try
                    {
                        if (txtbuscar.Text == "")
                        {%>
        <div class="container">
        <div class="row align-items-center">
            <%foreach (Dominio.Articulo item in arti)
    {%>



            <div class="col-4">
            <a class="nav-link fs-7" style="color:black;" href="DETALLES.aspx?id=<% =item.id %>">
                <div class="card mt-4">
                    <img src="<% = item.Imagen %>" class="card-img-top" alt="PLAY4">
                    <div class="card-body">
                        <h5><% = item.Nombre %></h5>
   
                        <p class="card-text"><% = item.Descripcion %></p>
                        <p class="card-text"><h3> $<% = item.Precio %></h3> </p>
                    </div>
                </div>
                </a>
            </div>



           <% } %>
        </div>
    </div>
    <% } %>
                    <%else { arti = arti.FindAll(PAPA => PAPA.Nombre.ToLower().Contains(txtbuscar.Text.ToLower())); %> 

                                            <%foreach (Dominio.Articulo item in arti)
    {%>



            <div class="col-4">
            <a class="nav-link fs-7" style="color:black;" href="DETALLES.aspx?id=<% =item.id %>">
                <div class="card mt-4">
                    <img src="<% = item.Imagen %>" class="card-img-top" alt="PLAY4">
                    <div class="card-body">
                        <h5><% = item.Nombre %></h5>
   
                        <p class="card-text"><% = item.Descripcion %></p>
                        <p class="card-text"><h3> $<% = item.Precio %></h3> </p>
                    </div>
                </div>
                </a>
            </div>



           <% } %>
        </div>
    </div>
                            <%}
                        }


                        catch (Exception ex)
                        {

                            throw ex;
                        } %>
    
   

<%--    <div class="container">
        <!--CONTENEDOR DE PRODUCTOS -->
        <div class="row align-items-center">
            <%foreach (Dominio.Articulo item in arti)
                {%>



            <div class="col-4">
            <a class="nav-link fs-7" style="color:black;" href="DETALLES.aspx?id=<% =item.id %>">
                <div class="card mt-4">
                    <img src="<% = item.Imagen %>" class="card-img-top" alt="PLAY4">
                    <div class="card-body">
                        <h5><% = item.Nombre %></h5>
   
                        <p class="card-text"><% = item.Descripcion %></p>
                        <p class="card-text"><h3> $<% = item.Precio %></h3> </p>
                    </div>
                </div>
                </a>
            </div>



            <% } %>
        </div>
    </div>
    <!-- CONTAINER-->--%>




    <%--    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>--%>
</asp:Content>
