<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DETALLES.aspx.cs" Inherits="NegocioWeb.DETALLES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Producto seleccionado</h1>


     
        <div class="container">
        <!--CONTENEDOR DE PRODUCTOS -->
        <div class="row align-items-center">

            
            <div class="col-7">
                <div class="card mt-4">
                    <img src="<% = articulo.Imagen  %>" style="width: auto" class="card-img-top" alt="">
                    <div class="card-body">
                        
                        
                    </div>
                </div>
            </div>

     
    
              <div class="col"  >
                <div class="card mt-3">
                    <div class="card-body" style="height: 500px">
                        <h3><% = articulo.Nombre %></h3>
                        <p><% = articulo.Descripcion %></p>

                        <p> Marca <%= articulo.Marca %></p>
                        <p> <h2>$<%= articulo.Precio %></h2></p>
                        
                            <button class="btn-danger"> 
                                <a class="nav-link fs-7" style="color:black;" href="Carrito.aspx?id=<% =articulo.id %>">
                                 Agregar a carrito</a>
                                 </button>
                       
                        
                    </div>
                </div>
            </div>
</div>
    

</asp:Content>
