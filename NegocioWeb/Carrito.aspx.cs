using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace NegocioWeb
{
    public partial class Carrito : System.Web.UI.Page
    {
        public List<Articulo> carrito;
         
        protected void Page_Load(object sender, EventArgs e)
        {
            carrito = (List<Articulo>) Session["CarritoProducto"];
            if (carrito == null)
                carrito = new List<Articulo>();

            if(Request.QueryString["id"] != null) {

                if (carrito.Find(x => x.id.ToString() == Request.QueryString["id"])==null)
                {
                    List<Articulo> listadoOriginal = (List<Articulo>)Session["ListadoProducto"];
                    carrito.Add(listadoOriginal.Find(x => x.id.ToString() == Request.QueryString["id"]));
                }

}

            var Elimina = Request.QueryString["ELIMINAR"];
            if (Elimina != null)
            {
                Articulo QuitarArt = carrito.Find(x => x.id == int.Parse(Elimina));
                carrito.Remove(QuitarArt);
            }

            Session.Add("CarritoProducto", carrito);


        }
    }
}