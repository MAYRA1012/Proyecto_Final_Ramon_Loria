using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectFinalv2
{
    public partial class ModifSinPrivilegios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bModUsar_Click(object sender, EventArgs e)
        {
            CSUsuario.correo = tcorreo.Text;
            CSUsuario.clave = tclave.Text;
            CSUsuario.nombre = tnombre.Text;
            CSUsuario.tipo = dtipo.Text;
            CSUsuario.id = Convert.ToInt32(tcodUsua.Text);

            if (CSUsuario.Modificar() > 0)
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('USUARIO MODIFICADO ..');if(alert) {window.location='UsuarioRegular2.aspx';}</script>");
            }
            else
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('Error al modificar..');if(alert) {window.location='UsuarioRegular2.aspx';}</script>");

            }





        }















    }
    
}