using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectFinalv2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bingresar_Click(object sender, EventArgs e)
        {
           CSUsuario.correo = tnombre.Text;
            CSUsuario.clave = tclave.Text;
            if (CSUsuario.ValidarUsuario() > 0)
            {

                if (CSUsuario.tipo.Equals("Admin"))
                
                    Response.Redirect("UsarioAdmin.aspx");
                  
                
                else
                
                    Response.Redirect("UsuarioRegular2.aspx");
                
            }
            else
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('USUARIO O CLAVE NO EXISTEN..');if(alert) {window.location='Loguin.aspx';}</script>");
            }

        }

        
    }
}