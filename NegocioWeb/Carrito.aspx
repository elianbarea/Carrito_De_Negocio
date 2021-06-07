<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="NegocioWeb.Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <% decimal total = 0; %>


   <div class="container">
        <!--CONTENEDOR DE PRODUCTOS -->
        <div class="row align-items-center">
            <div class="col-7">
                <%foreach (Dominio.Articulo item in carrito)
                    {%>
                <% total += item.Precio; %>


                <div class="col-7">
                    <div class="col-4">
                        <div class="card" style="width: 10rem;">
                            <div class="card-body">
                                <img src="<% = item.Imagen %>" class=" w-50 " alt="">
                                <h5 class="text-center"><% = item.Nombre %></h5>
                                <a href="Carrito.aspx?ELIMINAR=<% = item.id.ToString() %>" class="btn btn-primary">Eliminar</a>
                            </div>

                        </div>
                    </div>
                </div>

                <% } %>
            </div>

            <div class="col-3 border border-dark text-start p-3" >

                <p>TOTAL A PAGAR: $<% = total  %></p>

                <a class="nav-link fs-7 btn btn-danger" style="color: black; width: min-content; " href="COMPRADO.aspx">COMPRAR</a>
                

            </div>




        </div>
    </div>
    <%--    <table>
        <tr>
            <td><a href="Carrito.aspx?ELIMINAR=<% = item.id.ToString() %>" class="btn btn-primary">Eliminar</a></td>
        </tr>
    </table>--%>
</asp:Content>
