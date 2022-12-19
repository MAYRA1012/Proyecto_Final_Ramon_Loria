using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectFinalv2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lusuario2.ForeColor = System.Drawing.Color.White;
                lusuario2.Text = CSUsuario.nombre + " Tipo: " + CSUsuario.tipo;


            }
        }
    }
}