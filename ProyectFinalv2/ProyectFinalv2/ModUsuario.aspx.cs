using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectFinalv2
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bmodificar_Click(object sender, EventArgs e)
        {
            CSUsuario.correo = tcorreo.Text;
            CSUsuario.clave = tclave.Text;
            CSUsuario.nombre = tnombre.Text;
            CSUsuario.tipo = dtipo.Text;
            CSUsuario.id = Convert.ToInt32(dusuarioID.Text);

            if (CSUsuario.Modificar() > 0)
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('USUARIO MODIFICADO ..');if(alert) {window.location='ModUsuario.aspx';}</script>");
            }
            else
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('Error al modificar..');if(alert) {window.location='ModUsuario.aspx';}</script>");

            }



        }

        protected void Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("UsarioAdmin.aspx");
        }

        protected void bborrar_Click(object sender, EventArgs e)
        {
            CSUsuario.id = Convert.ToInt32(dusuarioID.Text);

            if (CSUsuario.EliminarUsuario() > 0)
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('PRODUCTO BORRADO ..');if(alert) {window.location='ModUsuario.aspx';}</script>");
            }
            else
            {
                Page.RegisterStartupScript("UserMSG", "<script>alert('Error de Registro..');if(alert) {window.location='ModUsuario.aspx';}</script>");

            }

        }
    }
}