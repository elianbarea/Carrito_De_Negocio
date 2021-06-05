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
    
    public partial class DETALLES : System.Web.UI.Page
    {   
        
        public Articulo articulo;
        protected void Page_Load(object sender, EventArgs e)
        {
            localNegocio negocio = new localNegocio();
            int id = int.Parse (Request.QueryString["id"]);

            List<Articulo> listado = (List < Articulo >) Session["ListadoProducto"];
            articulo = listado.Find(x => x.id == id);
            

        }
    }
}