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
    public partial class Contact : Page
    {
        
        public List<Articulo> arti;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            localNegocio negocio = new localNegocio();
            try
            {
                arti = negocio.listar();
                //dgvProducto.DataSource = negocio.listar();
                //dgvProducto.DataBind(); listar grid
            }
            catch (Exception)
            {

                Response.Redirect("ERROR-aspx");
            }

        }
    }
}