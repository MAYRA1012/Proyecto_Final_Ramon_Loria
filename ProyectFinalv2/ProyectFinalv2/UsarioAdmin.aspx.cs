using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectFinalv2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lusuario.ForeColor = System.Drawing.Color.White;
                lusuario.Text = CSUsuario.nombre + " Tipo: " + CSUsuario.tipo;

    
             }

        }
    }
}